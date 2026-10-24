.class public final Lcom/shabakaty/downloader/ac2$a;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ac2;-><init>()V
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
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ac2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac2$a;->r:Lcom/shabakaty/downloader/ac2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ac2$a;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->b(Lcom/shabakaty/downloader/h8;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
