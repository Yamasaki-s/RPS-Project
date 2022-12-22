package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JankenServlet")
public class JankenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JankenServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		//じゃんけんの手を配列で定義
		String[] hands = { "グー", "チョキ", "パー" };
		//画像を配列で定義
		String[] imgHands = { "RPS_Rock.png", "RPS_Scissors.png", "RPS_Paper.png" };
		
		//０〜２の数字をランダムに生成する
		int random = (int) (Math.random() * 3);
		//PC側の手を決定
		String psHand = hands[random];
		//PCイメージ画像
		String pcImgHand = imgHands[random];

		//画面側へデータ受け渡し
		request.setAttribute("pcHand", psHand);
		request.setAttribute("pcImgHand", pcImgHand);

		//ユーザーの手の番号を受け取る
		int userHandNumber = Integer.parseInt(request.getParameter("hand"));
		//ユーザー側の手を決定
		String userHand = hands[userHandNumber];
		//ユーザー側のイメージ画像
		String userImgHand = hands[userHandNumber];
		
		
		switch (userImgHand) {
			case "グー": 
				userImgHand="RPS_Rock.png";
			break;
			
			case "チョキ": 
				userImgHand="RPS_Scissors.png";
			break;
			
			case "パー": 
				userImgHand="RPS_Paper.png";
			break;
		}
		
		//画面側へデータ受け渡し
		request.setAttribute("userHand", userHand);
		request.setAttribute("userImgHand", userImgHand);
	
		String result1 = "";
		String result2 = "";
		//勝敗の判定。 0:あいこ 1:負け 2:勝ち
		int judge = (userHandNumber - random + 3) % 3;
		
		if (judge == 0) {
			result1 = "残念！";
			result2 = "あいこです。";
		} else if (judge == 1) {
			result1 = "残念!";
			result2 = "あなたの負けです。";
		} else if (judge == 2) {
			result1 = "おめでとうございます！";
			result2 = "あなたの勝ちです";
		}
		
		request.setAttribute("result1", result1);
		request.setAttribute("result2", result2);
		
		//画面遷移
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Janken.jsp");
		rd.forward(request, response);
		
		
	}

}
