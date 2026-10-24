.class public final Lcom/shabakaty/downloader/lw0$a;
.super Ljava/lang/Object;
.source "DownloadEventsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lw0$a;->a:Ljava/lang/String;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lw0$a;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/lw0$a;->c:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/lw0$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, ":"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/lw0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lw0$a$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/lw0$a$a;-><init>(Lcom/shabakaty/downloader/lw0$a;)V

    .line 2
    sget-boolean v1, Lcom/shabakaty/downloader/lw0;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
