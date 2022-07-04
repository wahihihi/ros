#include <interpreter.hpp>
#include <input_data_type.h>

namespace ezcfg
{
template<> void Interpreter::parserDispatcher<::proto_input::Point3D>(::proto_input::Point3D& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "x")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.x);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "y")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.y);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "z")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.z);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::BBox2D>(::proto_input::BBox2D& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "xmin")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.xmin);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "ymin")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.ymin);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "xmax")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.xmax);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "ymax")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.ymax);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::Header>(::proto_input::Header& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "timestamp_sec")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.timestamp_sec);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::Quaternion>(::proto_input::Quaternion& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "qx")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.qx);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "qy")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.qy);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "qz")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.qz);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "qw")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.qw);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::Pose>(::proto_input::Pose& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "position")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.position);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "orientation")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.orientation);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::Location>(::proto_input::Location& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "header")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.header);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "pose")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.pose);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::LidarObject>(::proto_input::LidarObject& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "id")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.id);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "velocity")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.velocity);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "length")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.length);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "width")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.width);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "height")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.height);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "anchor_point")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.anchor_point);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
template<> void Interpreter::parserDispatcher<::proto_input::CameraObject>(::proto_input::CameraObject& data)
{
	lex.match(Token::L_BRACE);
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "id")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.id);
			break;
		}
		else jump();
	}
	while(true)
	{
		if (lex.getToken() == Token::ID && lex.getTokenText() == "bbox2d")
		{
			lex.next();
			if (!lex.option(Token::COLON) && lex.getToken() != Token::L_BRACE) lex.match(Token::COLON);
			parserDispatcher(data.bbox2d);
			break;
		}
		else jump();
	}
	while(lex.getToken() != Token::R_BRACE) jump();
	lex.match(Token::R_BRACE);
}
} /* namespace: ezcfg */
