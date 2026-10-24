.class public Lcom/shabakaty/downloader/b43;
.super Ljava/lang/Object;
.source "OSReceiveReceiptController.java"


# static fields
.field public static d:Lcom/shabakaty/downloader/b43;


# instance fields
.field public final a:Lcom/shabakaty/downloader/d23;

.field public final b:Lcom/onesignal/h0;

.field public final c:Lcom/onesignal/i0;


# direct methods
.method public constructor <init>(Lcom/onesignal/i0;Lcom/shabakaty/downloader/d23;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b43;->c:Lcom/onesignal/i0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b43;->a:Lcom/shabakaty/downloader/d23;

    .line 4
    new-instance p1, Lcom/onesignal/h0;

    invoke-direct {p1}, Lcom/onesignal/h0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b43;->b:Lcom/onesignal/h0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ar$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive receipt ending with success callback completer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
