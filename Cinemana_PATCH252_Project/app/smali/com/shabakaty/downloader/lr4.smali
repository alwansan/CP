.class public final Lcom/shabakaty/downloader/lr4;
.super Lcom/shabakaty/downloader/z64;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lr4$c;,
        Lcom/shabakaty/downloader/lr4$a;,
        Lcom/shabakaty/downloader/lr4$b;
    }
.end annotation


# static fields
.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Lcom/shabakaty/downloader/lr4$b;

.field public static final w:Lcom/shabakaty/downloader/lr4$a;


# instance fields
.field public final n:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->o:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->p:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->q:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->r:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->s:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->t:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr4;->u:Ljava/util/regex/Pattern;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/lr4$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/lr4$b;-><init>(FII)V

    sput-object v0, Lcom/shabakaty/downloader/lr4;->v:Lcom/shabakaty/downloader/lr4$b;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/lr4$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/lr4$a;-><init>(II)V

    sput-object v0, Lcom/shabakaty/downloader/lr4;->w:Lcom/shabakaty/downloader/lr4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/lr4;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/shabakaty/downloader/or4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/or4;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/lr4$a;)Lcom/shabakaty/downloader/lr4$a;
    .locals 7

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/lr4;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/lr4$a;

    invoke-direct {v4, v1, v0}, Lcom/shabakaty/downloader/lr4$a;-><init>(II)V

    return-object v4

    .line 13
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/dg4;

    const/16 v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid cell resolution "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static p(Ljava/lang/String;Lcom/shabakaty/downloader/or4;)V
    .locals 7

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v0, "\\s+"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/lr4;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, v0

    if-ne v1, v3, :cond_5

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/lr4;->q:Ljava/util/regex/Pattern;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 7
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 12
    new-instance p0, Lcom/shabakaty/downloader/dg4;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-static {p1, v0, v1, v4}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :pswitch_0
    iput v2, p1, Lcom/shabakaty/downloader/or4;->j:I

    goto :goto_2

    .line 14
    :pswitch_1
    iput v3, p1, Lcom/shabakaty/downloader/or4;->j:I

    goto :goto_2

    .line 15
    :pswitch_2
    iput p0, p1, Lcom/shabakaty/downloader/or4;->j:I

    .line 16
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 19
    iput p0, p1, Lcom/shabakaty/downloader/or4;->k:F

    return-void

    .line 20
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/dg4;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-static {v0, v1, p0, v4}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p0, Lcom/shabakaty/downloader/dg4;

    array-length p1, v0

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid number of entries for fontSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Lorg/xmlpull/v1/XmlPullParser;)Lcom/shabakaty/downloader/lr4$b;
    .locals 6

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v2, -0x1

    const-string v4, " "

    .line 5
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 7
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 8
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Lcom/shabakaty/downloader/dg4;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    :goto_1
    sget-object v3, Lcom/shabakaty/downloader/lr4;->v:Lcom/shabakaty/downloader/lr4$b;

    iget v4, v3, Lcom/shabakaty/downloader/lr4$b;->b:I

    const-string v5, "subFrameRate"

    .line 11
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 13
    :cond_3
    iget v3, v3, Lcom/shabakaty/downloader/lr4$b;->c:I

    const-string v5, "tickRate"

    .line 14
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 16
    :cond_4
    new-instance p0, Lcom/shabakaty/downloader/lr4$b;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p0, v0, v4, v3}, Lcom/shabakaty/downloader/lr4$b;-><init>(FII)V

    return-object p0
.end method

.method public static r(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/shabakaty/downloader/lr4$a;Lcom/shabakaty/downloader/lr4$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/or4;",
            ">;",
            "Lcom/shabakaty/downloader/lr4$a;",
            "Lcom/shabakaty/downloader/lr4$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/nr4;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/or4;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "style"

    .line 2
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/or4;

    invoke-direct {v4}, Lcom/shabakaty/downloader/or4;-><init>()V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/lr4;->t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v3}, Lcom/shabakaty/downloader/lr4;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v3, v5

    .line 6
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/or4;

    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/or4;->a(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v4, Lcom/shabakaty/downloader/or4;->l:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v6, p4

    goto/16 :goto_14

    :cond_3
    const-string v3, "region"

    .line 9
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "id"

    if-eqz v3, :cond_21

    .line 10
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_11

    :cond_4
    const-string v3, "origin"

    .line 11
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TtmlDecoder"

    if-eqz v3, :cond_20

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/lr4;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 13
    sget-object v9, Lcom/shabakaty/downloader/lr4;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 14
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    const-string v12, "Ignoring region with malformed origin: "

    const-string v13, "Ignoring region with missing tts:extent: "

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eqz v11, :cond_6

    .line 15
    :try_start_0
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v14

    .line 18
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v8, v14

    goto :goto_3

    :catch_0
    nop

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 23
    :cond_6
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1e

    if-nez v2, :cond_8

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_2
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 26
    :cond_8
    :try_start_1
    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 29
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v8, v8

    .line 32
    iget v11, v2, Lcom/shabakaty/downloader/lr4$c;->a:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    int-to-float v10, v10

    .line 33
    iget v11, v2, Lcom/shabakaty/downloader/lr4$c;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v17, v10

    move v10, v8

    move/from16 v8, v17

    :goto_3
    const-string v11, "extent"

    .line 34
    invoke-static {v0, v11}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1c

    .line 35
    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 36
    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 37
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    const-string v12, "Ignoring region with malformed extent: "

    if-eqz v11, :cond_a

    .line 38
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 39
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v14

    .line 41
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v3, v14

    move v13, v3

    move v12, v9

    goto :goto_6

    :catch_1
    nop

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 45
    :goto_4
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 46
    :cond_a
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-nez v2, :cond_c

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_5
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 49
    :cond_c
    :try_start_3
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 52
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v6, v6

    .line 55
    iget v11, v2, Lcom/shabakaty/downloader/lr4$c;->a:I

    int-to-float v11, v11

    div-float/2addr v6, v11

    int-to-float v9, v9

    .line 56
    iget v3, v2, Lcom/shabakaty/downloader/lr4$c;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v3, v3

    div-float/2addr v9, v3

    move v12, v6

    move v13, v9

    :goto_6
    const-string v3, "displayAlign"

    .line 57
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 58
    invoke-static {v3}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    add-float/2addr v8, v13

    move v9, v8

    const/4 v11, 0x2

    goto :goto_8

    :cond_e
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v13, v3

    add-float/2addr v3, v8

    move v9, v3

    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    :goto_7
    move v9, v8

    const/4 v11, 0x0

    :goto_8
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v4, p2

    .line 59
    iget v6, v4, Lcom/shabakaty/downloader/lr4$a;->a:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    const-string v6, "writingMode"

    .line 60
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 61
    invoke-static {v6}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v14, 0xe6e

    if-eq v8, v14, :cond_14

    const v14, 0x363874

    if-eq v8, v14, :cond_12

    const v14, 0x363928

    if-eq v8, v14, :cond_10

    goto :goto_9

    :cond_10
    const-string v8, "tbrl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_9

    :cond_11
    const/4 v6, 0x2

    goto :goto_a

    :cond_12
    const-string v8, "tblr"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_9

    :cond_13
    const/4 v6, 0x1

    goto :goto_a

    :cond_14
    const-string v8, "tb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    :goto_9
    const/4 v6, -0x1

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_17

    if-eq v6, v5, :cond_17

    if-eq v6, v15, :cond_16

    goto :goto_b

    :cond_16
    const/16 v16, 0x1

    goto :goto_c

    :cond_17
    const/16 v16, 0x2

    goto :goto_c

    :cond_18
    :goto_b
    const/high16 v5, -0x80000000

    const/high16 v16, -0x80000000

    .line 62
    :goto_c
    new-instance v5, Lcom/shabakaty/downloader/nr4;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v5

    move v8, v10

    move v10, v14

    move v14, v15

    move v15, v3

    invoke-direct/range {v6 .. v16}, Lcom/shabakaty/downloader/nr4;-><init>(Ljava/lang/String;FFIIFFIFI)V

    goto :goto_12

    :catch_2
    nop

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_19
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 64
    :goto_d
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1a
    const-string v5, "Ignoring region with unsupported extent: "

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_1b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 66
    :goto_e
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1c
    const-string v3, "Ignoring region without an extent"

    .line 67
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_3
    nop

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 69
    :goto_f
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1e
    const-string v5, "Ignoring region with unsupported origin: "

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 71
    :goto_10
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_20
    const-string v3, "Ignoring region without an origin"

    .line 72
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_2

    .line 73
    iget-object v3, v5, Lcom/shabakaty/downloader/nr4;->a:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_21
    move-object/from16 v6, p4

    const-string v3, "metadata"

    .line 74
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 75
    :cond_22
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "image"

    .line 76
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 77
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 78
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p5

    .line 79
    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_23
    move-object/from16 v8, p5

    .line 80
    :goto_13
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_15

    :cond_24
    :goto_14
    move-object/from16 v8, p5

    :goto_15
    const-string v3, "head"

    .line 81
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1
.end method

.method public static s(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/mr4;Ljava/util/Map;Lcom/shabakaty/downloader/lr4$b;)Lcom/shabakaty/downloader/mr4;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/shabakaty/downloader/mr4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/nr4;",
            ">;",
            "Lcom/shabakaty/downloader/lr4$b;",
            ")",
            "Lcom/shabakaty/downloader/mr4;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p3

    .line 1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/lr4;->t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v7

    const-string v8, ""

    move-object v10, v3

    move-object v9, v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v10

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_e

    .line 3
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v0, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "backgroundImage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    const-string v6, "style"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v6, "begin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_3
    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v6, "dur"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_5
    const-string v6, "region"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_c

    if-eq v4, v0, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    const/4 v6, 0x3

    if-eq v4, v6, :cond_8

    const/4 v6, 0x4

    if-eq v4, v6, :cond_7

    const/4 v6, 0x5

    if-eq v4, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "#"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 8
    :cond_7
    invoke-static {v5}, Lcom/shabakaty/downloader/lr4;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v4, v0

    if-lez v4, :cond_b

    move-object v8, v0

    goto :goto_3

    .line 10
    :cond_8
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/lr4;->v(Ljava/lang/String;Lcom/shabakaty/downloader/lr4$b;)J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_3

    .line 11
    :cond_9
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/lr4;->v(Ljava/lang/String;Lcom/shabakaty/downloader/lr4$b;)J

    move-result-wide v4

    move-wide v14, v4

    goto :goto_3

    .line 12
    :cond_a
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/lr4;->v(Ljava/lang/String;Lcom/shabakaty/downloader/lr4$b;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    :cond_b
    :goto_3
    move-object/from16 v0, p2

    goto :goto_4

    :cond_c
    move-object/from16 v0, p2

    .line 13
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v9, v5

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_e
    if-eqz v11, :cond_10

    .line 14
    iget-wide v0, v11, Lcom/shabakaty/downloader/mr4;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    cmp-long v4, v12, v2

    if-eqz v4, :cond_f

    add-long/2addr v12, v0

    :cond_f
    cmp-long v4, v14, v2

    if-eqz v4, :cond_11

    add-long/2addr v14, v0

    goto :goto_5

    :cond_10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :cond_11
    :goto_5
    cmp-long v0, v14, v2

    if-nez v0, :cond_13

    cmp-long v0, v16, v2

    if-eqz v0, :cond_12

    add-long v16, v12, v16

    move-wide/from16 v5, v16

    goto :goto_6

    :cond_12
    if-eqz v11, :cond_13

    .line 15
    iget-wide v0, v11, Lcom/shabakaty/downloader/mr4;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    move-wide v5, v0

    goto :goto_6

    :cond_13
    move-wide v5, v14

    .line 16
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v14, Lcom/shabakaty/downloader/mr4;

    const/4 v2, 0x0

    move-object v0, v14

    move-wide v3, v12

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/mr4;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/shabakaty/downloader/or4;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/mr4;)V

    return-object v14

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_44

    .line 2
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x4

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "multiRowAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0xe

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "backgroundColor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "rubyPosition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "textEmphasis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "fontSize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "textCombine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "shear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_8
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_9
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_a
    const-string v7, "fontWeight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_b
    const-string v7, "textDecoration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_c
    const-string v7, "textAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_d
    const-string v7, "fontFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_e
    const-string v7, "fontStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_1

    :cond_e
    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    const-string v7, "after"

    const-string v14, "before"

    const-string v15, "none"

    const-string v8, "TtmlDecoder"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_18

    .line 4
    :pswitch_0
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    invoke-static {v5}, Lcom/shabakaty/downloader/lr4;->n(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 5
    iput-object v5, v0, Lcom/shabakaty/downloader/or4;->p:Landroid/text/Layout$Alignment;

    goto/16 :goto_18

    .line 6
    :pswitch_1
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/y50;->a(Ljava/lang/String;Z)I

    move-result v6

    .line 8
    iput v6, v0, Lcom/shabakaty/downloader/or4;->d:I

    .line 9
    iput-boolean v13, v0, Lcom/shabakaty/downloader/or4;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_18

    :catch_0
    nop

    const-string v6, "Failed parsing background value: "

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 11
    :goto_3
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 12
    :pswitch_2
    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_18

    .line 13
    :cond_10
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 14
    iput v12, v0, Lcom/shabakaty/downloader/or4;->n:I

    goto/16 :goto_18

    .line 15
    :cond_11
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 16
    iput v13, v0, Lcom/shabakaty/downloader/or4;->n:I

    goto/16 :goto_18

    .line 17
    :pswitch_3
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    sget-object v6, Lcom/shabakaty/downloader/tl4;->d:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    if-nez v5, :cond_12

    goto/16 :goto_10

    .line 18
    :cond_12
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    goto/16 :goto_10

    .line 20
    :cond_13
    sget-object v6, Lcom/shabakaty/downloader/tl4;->d:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/t;->z([Ljava/lang/Object;)Lcom/google/common/collect/t;

    move-result-object v5

    .line 21
    sget-object v6, Lcom/shabakaty/downloader/tl4;->h:Lcom/google/common/collect/t;

    invoke-static {v6, v5}, Lcom/google/common/collect/h0;->c(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/h0$c;

    move-result-object v6

    const-string v8, "outside"

    .line 22
    invoke-static {v6, v8}, Lcom/google/common/collect/u;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x5305c081

    if-eq v9, v10, :cond_16

    const v10, -0x41ecca5b

    if-eq v9, v10, :cond_15

    const v8, 0x58705dc

    if-eq v9, v8, :cond_14

    goto :goto_4

    :cond_14
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    goto :goto_5

    :cond_15
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_5

    :cond_16
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x2

    goto :goto_5

    :cond_17
    :goto_4
    const/4 v6, -0x1

    :goto_5
    if-eqz v6, :cond_19

    if-eq v6, v13, :cond_18

    const/4 v6, 0x1

    goto :goto_6

    :cond_18
    const/4 v6, -0x2

    goto :goto_6

    :cond_19
    const/4 v6, 0x2

    .line 23
    :goto_6
    sget-object v7, Lcom/shabakaty/downloader/tl4;->e:Lcom/google/common/collect/t;

    invoke-static {v7, v5}, Lcom/google/common/collect/h0;->c(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/h0$c;

    move-result-object v7

    .line 24
    check-cast v7, Lcom/google/common/collect/h0$a;

    invoke-virtual {v7}, Lcom/google/common/collect/h0$a;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 25
    new-instance v5, Lcom/google/common/collect/g0;

    invoke-direct {v5, v7}, Lcom/google/common/collect/g0;-><init>(Lcom/google/common/collect/h0$a;)V

    .line 26
    invoke-virtual {v5}, Lcom/google/common/collect/a;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x2dddaf

    if-eq v7, v8, :cond_1b

    const v8, 0x33af38

    if-eq v7, v8, :cond_1a

    goto :goto_7

    :cond_1a
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v13, 0x0

    goto :goto_8

    :cond_1b
    const-string v7, "auto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v13, -0x1

    :goto_8
    if-eqz v13, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v11, 0x0

    .line 27
    :goto_9
    new-instance v5, Lcom/shabakaty/downloader/tl4;

    invoke-direct {v5, v11, v3, v6}, Lcom/shabakaty/downloader/tl4;-><init>(III)V

    goto :goto_a

    .line 28
    :cond_1e
    sget-object v7, Lcom/shabakaty/downloader/tl4;->g:Lcom/google/common/collect/t;

    invoke-static {v7, v5}, Lcom/google/common/collect/h0;->c(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/h0$c;

    move-result-object v7

    .line 29
    sget-object v8, Lcom/shabakaty/downloader/tl4;->f:Lcom/google/common/collect/t;

    invoke-static {v8, v5}, Lcom/google/common/collect/h0;->c(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/h0$c;

    move-result-object v5

    .line 30
    move-object v8, v7

    check-cast v8, Lcom/google/common/collect/h0$a;

    invoke-virtual {v8}, Lcom/google/common/collect/h0$a;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1f

    move-object v8, v5

    check-cast v8, Lcom/google/common/collect/h0$a;

    invoke-virtual {v8}, Lcom/google/common/collect/h0$a;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 31
    new-instance v5, Lcom/shabakaty/downloader/tl4;

    invoke-direct {v5, v11, v3, v6}, Lcom/shabakaty/downloader/tl4;-><init>(III)V

    :goto_a
    move-object v6, v5

    goto/16 :goto_10

    :cond_1f
    const-string v8, "filled"

    .line 32
    invoke-static {v7, v8}, Lcom/google/common/collect/u;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x4bf7529e

    if-eq v9, v10, :cond_21

    const v8, 0x34264a

    if-eq v9, v8, :cond_20

    goto :goto_b

    :cond_20
    const-string v8, "open"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const/4 v7, 0x0

    goto :goto_c

    :cond_21
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const/4 v7, 0x1

    goto :goto_c

    :cond_22
    :goto_b
    const/4 v7, -0x1

    :goto_c
    if-eqz v7, :cond_23

    const/4 v7, 0x1

    goto :goto_d

    :cond_23
    const/4 v7, 0x2

    :goto_d
    const-string v8, "circle"

    .line 33
    invoke-static {v5, v8}, Lcom/google/common/collect/u;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x51134330

    if-eq v9, v10, :cond_26

    const v8, -0x35fdaa48    # -2135406.0f

    if-eq v9, v8, :cond_25

    const v8, 0x18549

    if-eq v9, v8, :cond_24

    goto :goto_e

    :cond_24
    const-string v8, "dot"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v11, 0x0

    goto :goto_e

    :cond_25
    const-string v8, "sesame"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v11, 0x1

    goto :goto_e

    :cond_26
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v11, 0x2

    :cond_27
    :goto_e
    if-eqz v11, :cond_29

    if-eq v11, v13, :cond_28

    const/4 v10, 0x1

    goto :goto_f

    :cond_28
    const/4 v10, 0x3

    goto :goto_f

    :cond_29
    const/4 v10, 0x2

    .line 34
    :goto_f
    new-instance v5, Lcom/shabakaty/downloader/tl4;

    invoke-direct {v5, v10, v7, v6}, Lcom/shabakaty/downloader/tl4;-><init>(III)V

    goto :goto_a

    .line 35
    :goto_10
    iput-object v6, v0, Lcom/shabakaty/downloader/or4;->r:Lcom/shabakaty/downloader/tl4;

    goto/16 :goto_18

    .line 36
    :pswitch_4
    :try_start_1
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 37
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/lr4;->p(Ljava/lang/String;Lcom/shabakaty/downloader/or4;)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/dg4; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_18

    :catch_1
    nop

    const-string v6, "Failed parsing fontSize value: "

    .line 38
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_2a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    :goto_11
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 40
    :pswitch_5
    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto/16 :goto_18

    .line 41
    :cond_2b
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 42
    iput v3, v0, Lcom/shabakaty/downloader/or4;->q:I

    goto/16 :goto_18

    .line 43
    :cond_2c
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 44
    iput v13, v0, Lcom/shabakaty/downloader/or4;->q:I

    goto/16 :goto_18

    .line 45
    :pswitch_6
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v6

    .line 46
    sget-object v0, Lcom/shabakaty/downloader/lr4;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v7, :cond_2e

    const-string v0, "Invalid value for shear: "

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_2d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 49
    :goto_12
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 50
    :cond_2e
    :try_start_2
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, -0x3d380000    # -100.0f

    .line 53
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    .line 54
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    const-string v7, "Failed to parse shear: "

    .line 55
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2f

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_2f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_13
    invoke-static {v8, v5, v0}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :goto_14
    iput v9, v6, Lcom/shabakaty/downloader/or4;->s:F

    move-object v0, v6

    goto/16 :goto_18

    .line 57
    :pswitch_7
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 58
    :try_start_3
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/y50;->a(Ljava/lang/String;Z)I

    move-result v6

    .line 59
    iput v6, v0, Lcom/shabakaty/downloader/or4;->b:I

    .line 60
    iput-boolean v13, v0, Lcom/shabakaty/downloader/or4;->c:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_18

    :catch_3
    nop

    const-string v6, "Failed parsing color value: "

    .line 61
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_30

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    :cond_30
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 62
    :goto_15
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 63
    :pswitch_8
    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_16

    :sswitch_f
    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_16

    :cond_31
    const/4 v11, 0x5

    goto :goto_16

    :sswitch_10
    const-string v6, "base"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_16

    :cond_32
    const/4 v11, 0x4

    goto :goto_16

    :sswitch_11
    const-string v6, "textContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_16

    :cond_33
    const/4 v11, 0x3

    goto :goto_16

    :sswitch_12
    const-string v6, "delimiter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_16

    :cond_34
    const/4 v11, 0x2

    goto :goto_16

    :sswitch_13
    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_16

    :cond_35
    const/4 v11, 0x1

    goto :goto_16

    :sswitch_14
    const-string v6, "baseContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_16

    :cond_36
    const/4 v11, 0x0

    :goto_16
    if-eqz v11, :cond_3a

    if-eq v11, v13, :cond_39

    if-eq v11, v12, :cond_38

    const/4 v5, 0x3

    if-eq v11, v5, :cond_37

    if-eq v11, v9, :cond_3a

    const/4 v6, 0x5

    if-eq v11, v6, :cond_37

    goto/16 :goto_18

    .line 64
    :cond_37
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 65
    iput v5, v0, Lcom/shabakaty/downloader/or4;->m:I

    goto/16 :goto_18

    .line 66
    :cond_38
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 67
    iput v9, v0, Lcom/shabakaty/downloader/or4;->m:I

    goto/16 :goto_18

    .line 68
    :cond_39
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 69
    iput v13, v0, Lcom/shabakaty/downloader/or4;->m:I

    goto/16 :goto_18

    .line 70
    :cond_3a
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 71
    iput v12, v0, Lcom/shabakaty/downloader/or4;->m:I

    goto/16 :goto_18

    .line 72
    :pswitch_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "style"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 73
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 74
    iput-object v5, v0, Lcom/shabakaty/downloader/or4;->l:Ljava/lang/String;

    goto/16 :goto_18

    .line 75
    :pswitch_a
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    const-string v6, "bold"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 76
    iput v5, v0, Lcom/shabakaty/downloader/or4;->h:I

    goto/16 :goto_18

    .line 77
    :pswitch_b
    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    goto :goto_17

    :sswitch_15
    const-string v6, "linethrough"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_17

    :cond_3b
    const/4 v11, 0x3

    goto :goto_17

    :sswitch_16
    const-string v6, "nolinethrough"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_17

    :cond_3c
    const/4 v11, 0x2

    goto :goto_17

    :sswitch_17
    const-string v6, "underline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_17

    :cond_3d
    const/4 v11, 0x1

    goto :goto_17

    :sswitch_18
    const-string v6, "nounderline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_17

    :cond_3e
    const/4 v11, 0x0

    :goto_17
    if-eqz v11, :cond_42

    if-eq v11, v13, :cond_41

    if-eq v11, v12, :cond_40

    const/4 v5, 0x3

    if-eq v11, v5, :cond_3f

    goto :goto_18

    .line 78
    :cond_3f
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 79
    iput v13, v0, Lcom/shabakaty/downloader/or4;->f:I

    goto :goto_18

    .line 80
    :cond_40
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 81
    iput v3, v0, Lcom/shabakaty/downloader/or4;->f:I

    goto :goto_18

    .line 82
    :cond_41
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 83
    iput v13, v0, Lcom/shabakaty/downloader/or4;->g:I

    goto :goto_18

    .line 84
    :cond_42
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 85
    iput v3, v0, Lcom/shabakaty/downloader/or4;->g:I

    goto :goto_18

    .line 86
    :pswitch_c
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    invoke-static {v5}, Lcom/shabakaty/downloader/lr4;->n(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 87
    iput-object v5, v0, Lcom/shabakaty/downloader/or4;->o:Landroid/text/Layout$Alignment;

    goto :goto_18

    .line 88
    :pswitch_d
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    .line 89
    iput-object v5, v0, Lcom/shabakaty/downloader/or4;->a:Ljava/lang/String;

    goto :goto_18

    .line 90
    :pswitch_e
    invoke-static {v0}, Lcom/shabakaty/downloader/lr4;->l(Lcom/shabakaty/downloader/or4;)Lcom/shabakaty/downloader/or4;

    move-result-object v0

    const-string v6, "italic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 91
    iput v5, v0, Lcom/shabakaty/downloader/or4;->i:I

    :cond_43
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_44
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_14
        -0x187eb37f -> :sswitch_13
        -0xeee99f9 -> :sswitch_12
        -0x81c562c -> :sswitch_11
        0x2e06d1 -> :sswitch_10
        0x36452d -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_18
        -0x3d363934 -> :sswitch_17
        0x36723ff0 -> :sswitch_16
        0x641ec051 -> :sswitch_15
    .end sparse-switch
.end method

.method public static u(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v0, -0x1

    const-string v1, "\\s+"

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static v(Ljava/lang/String;Lcom/shabakaty/downloader/lr4$b;)J
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr4;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    long-to-double v7, v7

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/shabakaty/downloader/lr4$b;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 17
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/shabakaty/downloader/lr4$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/shabakaty/downloader/lr4$b;->a:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    .line 18
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/lr4;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 23
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_2
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_3
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :sswitch_4
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    packed-switch v4, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v8, p0

    goto :goto_6

    .line 26
    :pswitch_1
    iget p0, p1, Lcom/shabakaty/downloader/lr4$b;->c:I

    int-to-double p0, p0

    goto :goto_4

    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double v8, v8, p0

    goto :goto_6

    .line 27
    :pswitch_4
    iget p0, p1, Lcom/shabakaty/downloader/lr4$b;->a:F

    float-to-double p0, p0

    goto :goto_4

    :goto_6
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 28
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/dg4;

    const-string v0, "Malformed time expression: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Lorg/xmlpull/v1/XmlPullParser;)Lcom/shabakaty/downloader/lr4$c;
    .locals 5

    const-string v0, "extent"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/lr4;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_2

    const-string v1, "Ignoring non-pixel tts extent: "

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 9
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/lr4$c;

    invoke-direct {v4, v2, v1}, Lcom/shabakaty/downloader/lr4$c;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    nop

    const-string v1, "Ignoring malformed tts extent: "

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/lr4;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/nr4;

    const-string v13, ""

    const v14, -0x800001

    const v15, -0x800001

    const/high16 v16, -0x80000000

    const/high16 v17, -0x80000000

    const v18, -0x800001

    const v19, -0x800001

    const/high16 v20, -0x80000000

    const v21, -0x800001

    const/high16 v22, -0x80000000

    move-object v12, v2

    .line 6
    invoke-direct/range {v12 .. v22}, Lcom/shabakaty/downloader/nr4;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 7
    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v3, 0x0

    .line 9
    invoke-interface {v8, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 10
    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 12
    sget-object v4, Lcom/shabakaty/downloader/lr4;->v:Lcom/shabakaty/downloader/lr4$b;

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/lr4;->w:Lcom/shabakaty/downloader/lr4$a;

    move-object v14, v3

    const/4 v13, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    .line 14
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mr4;

    const/4 v6, 0x2

    if-nez v13, :cond_9

    .line 15
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "tt"

    if-ne v0, v6, :cond_5

    .line 16
    :try_start_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {v8}, Lcom/shabakaty/downloader/lr4;->q(Lorg/xmlpull/v1/XmlPullParser;)Lcom/shabakaty/downloader/lr4$b;

    move-result-object v4

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/lr4;->w:Lcom/shabakaty/downloader/lr4$a;

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/lr4;->o(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/lr4$a;)Lcom/shabakaty/downloader/lr4$a;

    move-result-object v5

    .line 19
    invoke-static {v8}, Lcom/shabakaty/downloader/lr4;->w(Lorg/xmlpull/v1/XmlPullParser;)Lcom/shabakaty/downloader/lr4$c;

    move-result-object v3

    :cond_0
    move-object/from16 v16, v3

    move-object v7, v4

    move-object/from16 v17, v5

    .line 20
    invoke-static {v15}, Lcom/shabakaty/downloader/lr4;->m(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "TtmlDecoder"

    if-nez v0, :cond_2

    :try_start_2
    const-string v0, "Ignoring unsupported tag: "

    .line 21
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 22
    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    move-object v15, v7

    goto :goto_2

    :cond_2
    const-string v0, "head"

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v6, v10

    move-object v15, v7

    move-object v7, v11

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/lr4;->r(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/shabakaty/downloader/lr4$a;Lcom/shabakaty/downloader/lr4$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_3
    move-object v15, v7

    .line 25
    :try_start_3
    invoke-static {v8, v2, v10, v15}, Lcom/shabakaty/downloader/lr4;->s(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/mr4;Ljava/util/Map;Lcom/shabakaty/downloader/lr4$b;)Lcom/shabakaty/downloader/mr4;

    move-result-object v0

    .line 26
    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/mr4;->a(Lcom/shabakaty/downloader/mr4;)V
    :try_end_3
    .catch Lcom/shabakaty/downloader/dg4; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Suppressing parser error"

    .line 28
    invoke-static {v3, v2, v0}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v13, v13, 0x1

    :cond_4
    :goto_2
    move-object v4, v15

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_3

    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_7

    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/mr4;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr4;

    move-result-object v0

    .line 31
    iget-object v6, v2, Lcom/shabakaty/downloader/mr4;->m:Ljava/util/List;

    if-nez v6, :cond_6

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/shabakaty/downloader/mr4;->m:Ljava/util/List;

    .line 33
    :cond_6
    iget-object v2, v2, Lcom/shabakaty/downloader/mr4;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 34
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    new-instance v14, Lcom/shabakaty/downloader/pr4;

    .line 36
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr4;

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-direct {v14, v0, v9, v10, v11}, Lcom/shabakaty/downloader/pr4;-><init>(Lcom/shabakaty/downloader/mr4;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 39
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-ne v0, v6, :cond_a

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    add-int/lit8 v13, v13, -0x1

    .line 40
    :cond_b
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 41
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_0

    :cond_c
    if-eqz v14, :cond_d

    return-object v14

    .line 42
    :cond_d
    new-instance v0, Lcom/shabakaty/downloader/dg4;

    const-string v2, "No TTML subtitles found"

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 44
    new-instance v2, Lcom/shabakaty/downloader/dg4;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
