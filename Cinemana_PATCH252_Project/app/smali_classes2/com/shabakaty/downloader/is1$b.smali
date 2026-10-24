.class public final Lcom/shabakaty/downloader/is1$b;
.super Lcom/shabakaty/downloader/af2;
.source "Handshake.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/is1;-><init>(Lcom/shabakaty/downloader/yn4;Lcom/shabakaty/downloader/a20;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/is1$b;->r:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/is1$b;->r:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :goto_0
    return-object v0
.end method
