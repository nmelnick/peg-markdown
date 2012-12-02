[CCode (cheader_filename = "markdown_lib.h")]
namespace Markdown {
	[CCode (cprefix="EXT_")]
	public enum Extensions {
		SMART            = 0x01,
		NOTES            = 0x02,
		FILTER_HTML      = 0x04,
		FILTER_STYLES    = 0x08
	}

	public enum Formats {
		[CCode (cname="HTML_FORMAT")]
		HTML,
		[CCode (cname="LATEX_FORMAT")]
		LATEX,
		[CCode (cname="GROFF_MM_FORMAT")]
		GROFF_MM,
		[CCode (cname="ODF_FORMAT")]
		ODF
	}

	[CCode (cname = "markdown_to_g_string")]
	public static GLib.StringBuilder to_stringbuilder (char* text, int extensions, int output_format);

	[CCode (cname = "markdown_custom_to_string")]
	public static string to_string (char* text, int extensions, int output_format) {
		return to_stringbuilder (text, extensions, output_format).str;
	}
}