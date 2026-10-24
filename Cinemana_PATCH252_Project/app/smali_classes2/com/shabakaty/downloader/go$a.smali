.class public final Lcom/shabakaty/downloader/go$a;
.super Lcom/shabakaty/downloader/af2;
.source "BuiltInAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/go;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/go;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/go;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/go$a;->r:Lcom/shabakaty/downloader/go;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/go$a;->r:Lcom/shabakaty/downloader/go;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/go;->a:Lcom/shabakaty/downloader/zd2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/go;->b:Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method
