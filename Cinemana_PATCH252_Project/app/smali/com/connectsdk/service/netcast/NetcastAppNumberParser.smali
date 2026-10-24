.class public Lcom/connectsdk/service/netcast/NetcastAppNumberParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NetcastAppNumberParser.java"


# instance fields
.field public final NUMBER:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;

.field public count:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "type"

    .line 2
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->TYPE:Ljava/lang/String;

    const-string v0, "number"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->NUMBER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->value:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "type"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "number"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->count:I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->value:Ljava/lang/String;

    return-void
.end method

.method public getApplicationNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/netcast/NetcastAppNumberParser;->count:I

    return v0
.end method
