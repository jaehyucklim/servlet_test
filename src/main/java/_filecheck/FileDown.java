package _filecheck;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//                  	JSP/down
@WebServlet(urlPatterns = "/down")
public class FileDown extends HttpServlet {
	public static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");

		// parameter(id, pass) 가져오기
		String fileName = request.getParameter("file_name");
		System.out.println("[fileName] = " + fileName);

		String savePath = "upload";

		// 서블릿 실행 환경 정보를 담고 있는 객체를 리턴
		ServletContext context = request.getSession().getServletContext();
		String sDownloadPath = context.getRealPath(savePath);

		String sFilepath = sDownloadPath + "\\" + fileName;
		System.out.println(sFilepath);

		byte b[] = new byte[4096];

		String sMimeType = context.getMimeType(sFilepath);
		System.out.println("sMimeType>>>" + sMimeType);

		/*
		 * 1. Content-Type: 전송되는 Content가 어떤 유형인지 알려주는 목적을 가지고 있습니다. - text/html,
		 * image/png, application/octet-stream 등의 값을 가집니다.
		 * 
		 * 2. Content-Type을 통해서 브라우저는 해당 데이터를 어떻게 처리해야 할 지 판단할 수 있습니다. ex) 1) image/png:
		 * 브라우저는 해당 Content를 이미지로 간주 2) application/octet-stream: 미확인 Binary 정보를 의미하며, 이
		 * 경우 브라우저는 파일을 다운로드하는 형태로 동작합니다. 3) text/javascript: 브라우저는 해당 Content를
		 * javascript로 간주
		 */

		// octet-stream: 8비트로 된 데이터를 의미하며, 지정되지 않은 파일 형식

		if (sMimeType == null) {
			sMimeType = "application/octet-stream";
		}
		response.setContentType(sMimeType);
		/*
		 * 이 부분이 한글 파일명이 깨지는 것을 방지 - getBytes(캐릭터셋): 자바 내부에 관리되는 유니코드 문자열을 인자로 지정된 캐릭터셋의
		 * 바이트 배열로 변환하는 메소드 - String(byte[] bytes, Charsert charset) String(바이트명, 캐리터셋)
		 * 생성자: 해당 바이트 배열을 주어진 캐릭터 셋으로 간주하여 스트림을 만드는 생성자
		 */
		String sEnString = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
		/*
		 * - Content-Disposition: Content가 어떻게 처리되는지 나타냅니다. 1) inline: 브라우저가 Content를 즉시
		 * 출력 2) attachment: 브라우저는 해당 Content를 처리하지 않고 다운로드 "inline;
		 */
		response.setHeader("Content-Disposition", "attachment; filename = " + sEnString);

		/*
		 * 1. try-with-resource문으로 try()괄호 안에 선언된 자원은 try문이 끝날 때 자동으로 close()메소드 호출
		 * 
		 * 2. try-with-resource문에 의해 자동으로 객체의 close()메소드가 호출될 수 있으려면 AutoCloseable이라는
		 * 인터페이스를 구현해야 합니다. 형식: try() { } catch() { } finally{}
		 */
		try (BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());
				BufferedInputStream in = new BufferedInputStream(new FileInputStream(sFilepath));) {
			int numRead;
			// read(b, 0, b.length): 바이트 배열 b의 0번부터 b.length까지 읽어온다.
			while ((numRead = in.read(b, 0, b.length)) != -1) {
				// 바이트 배열 b의 0번부터 b.length까지 브라우저로 출력
				out2.write(b, 0, numRead); 
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	} // doGet() end
}
