.class public final Lcom/shabakaty/downloader/kd2$b$b;
.super Lcom/shabakaty/downloader/af2;
.source "KPropertyImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kd2$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ai3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/kd2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kd2$b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kd2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kd2$b<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/kd2$b$b;->r:Lcom/shabakaty/downloader/kd2$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$b$b;->r:Lcom/shabakaty/downloader/kd2$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$b$b;->r:Lcom/shabakaty/downloader/kd2$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/tq0;->b(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bi3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
