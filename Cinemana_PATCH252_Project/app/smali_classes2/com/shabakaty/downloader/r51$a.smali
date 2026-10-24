.class public final Lcom/shabakaty/downloader/r51$a;
.super Lcom/shabakaty/downloader/r51$b;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final u:Lcom/shabakaty/downloader/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fv<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic v:Lcom/shabakaty/downloader/r51;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r51;JLcom/shabakaty/downloader/fv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/r51$a;->v:Lcom/shabakaty/downloader/r51;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/shabakaty/downloader/r51$b;-><init>(J)V

    iput-object p4, p0, Lcom/shabakaty/downloader/r51$a;->u:Lcom/shabakaty/downloader/fv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r51$a;->u:Lcom/shabakaty/downloader/fv;

    iget-object v1, p0, Lcom/shabakaty/downloader/r51$a;->v:Lcom/shabakaty/downloader/r51;

    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/fv;->u(Lcom/shabakaty/downloader/pe0;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/shabakaty/downloader/r51$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/r51$a;->u:Lcom/shabakaty/downloader/fv;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
