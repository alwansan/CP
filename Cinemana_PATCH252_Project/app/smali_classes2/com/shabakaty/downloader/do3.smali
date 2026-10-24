.class public Lcom/shabakaty/downloader/do3;
.super Lcom/shabakaty/downloader/yi0;
.source "RecordReaper.java"


# static fields
.field public static s:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/do3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/do3;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yi0;-><init>(Lcom/shabakaty/downloader/d92;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "RecordReaper("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, ")"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/do3;->s:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/do3;->s:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/do3;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".run() JmDNS reaping cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->D()V

    :cond_2
    :goto_0
    return-void
.end method
