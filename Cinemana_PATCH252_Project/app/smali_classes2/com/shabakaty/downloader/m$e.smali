.class public final Lcom/shabakaty/downloader/m$e;
.super Lcom/shabakaty/downloader/rl;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/xn3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xn3<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/m;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m;Lcom/shabakaty/downloader/xn3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xn3<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m$e;->s:Lcom/shabakaty/downloader/m;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rl;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/m$e;->r:Lcom/shabakaty/downloader/xn3;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/m$e;->r:Lcom/shabakaty/downloader/xn3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/m$e;->s:Lcom/shabakaty/downloader/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/m$e;->r:Lcom/shabakaty/downloader/xn3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/m$e;->s:Lcom/shabakaty/downloader/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RemoveReceiveOnCancel["

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/m$e;->r:Lcom/shabakaty/downloader/xn3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
