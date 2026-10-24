.class public Lcom/connectsdk/service/roku/RokuApplicationListParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RokuApplicationListParser.java"


# instance fields
.field public final APP:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public appInfo:Lcom/connectsdk/core/AppInfo;

.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/core/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "app"

    .line 2
    iput-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->APP:Ljava/lang/String;

    const-string v0, "id"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->value:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->value:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "app"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appInfo:Lcom/connectsdk/core/AppInfo;

    iget-object p2, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/connectsdk/core/AppInfo;->setName(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appList:Ljava/util/List;

    iget-object p2, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appInfo:Lcom/connectsdk/core/AppInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->value:Ljava/lang/String;

    return-void
.end method

.method public getApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/connectsdk/core/AppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appList:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "app"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "id"

    .line 2
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 3
    new-instance p2, Lcom/connectsdk/service/roku/RokuApplicationListParser$1;

    invoke-direct {p2, p0, p4, p1}, Lcom/connectsdk/service/roku/RokuApplicationListParser$1;-><init>(Lcom/connectsdk/service/roku/RokuApplicationListParser;Lorg/xml/sax/Attributes;I)V

    iput-object p2, p0, Lcom/connectsdk/service/roku/RokuApplicationListParser;->appInfo:Lcom/connectsdk/core/AppInfo;

    :cond_0
    return-void
.end method
