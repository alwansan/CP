.class public final Lcom/shabakaty/downloader/lw0;
.super Ljava/lang/Object;
.source "DownloadEventsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lw0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/lw0;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/lw0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lw0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lw0;->a:Lcom/shabakaty/downloader/lw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lw0$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lw0$b;-><init>(Ljava/lang/Throwable;)V

    .line 2
    sget-boolean p1, Lcom/shabakaty/downloader/lw0;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$b;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lw0$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lw0$a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/lw0$a;->d:I

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/lw0$a;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lw0$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lw0$a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/lw0$a;->d:I

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/lw0$a;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    return-object v0
.end method
