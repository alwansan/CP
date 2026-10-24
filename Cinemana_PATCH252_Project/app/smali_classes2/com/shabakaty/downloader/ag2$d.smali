.class public final Lcom/shabakaty/downloader/ag2$d;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaPackageScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ag2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bg2;

.field public final synthetic s:Lcom/shabakaty/downloader/ag2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/ag2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ag2$d;->r:Lcom/shabakaty/downloader/bg2;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag2$d;->s:Lcom/shabakaty/downloader/ag2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag2$d;->r:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ag2$d;->s:Lcom/shabakaty/downloader/ag2;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 7
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/u62;->c(Lcom/shabakaty/downloader/fi1;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
