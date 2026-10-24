.class public final Lcom/shabakaty/downloader/uf2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V
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
        "Lcom/shabakaty/downloader/g62;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2$c;->r:Lcom/shabakaty/downloader/uf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$c;->r:Lcom/shabakaty/downloader/uf2;

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/uf2$c;->r:Lcom/shabakaty/downloader/uf2;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/uf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->w:Lcom/shabakaty/downloader/o72;

    .line 5
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o72;->a(Lcom/shabakaty/downloader/v20;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
