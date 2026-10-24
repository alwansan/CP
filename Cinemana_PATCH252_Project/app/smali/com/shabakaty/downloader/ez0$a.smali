.class public final Lcom/shabakaty/downloader/ez0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadsCollectionAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ez0;->j(Lcom/shabakaty/downloader/ej$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ez0;

.field public final synthetic s:Lcom/shabakaty/downloader/ej$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ej$b<",
            "Lcom/shabakaty/downloader/p42;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ez0;Lcom/shabakaty/downloader/ej$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ez0;",
            "Lcom/shabakaty/downloader/ej$b<",
            "Lcom/shabakaty/downloader/p42;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ez0$a;->r:Lcom/shabakaty/downloader/ez0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ez0$a;->s:Lcom/shabakaty/downloader/ej$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ez0$a;->r:Lcom/shabakaty/downloader/ez0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ez0;->d:Lcom/shabakaty/downloader/ew0;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ez0$a;->s:Lcom/shabakaty/downloader/ej$b;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/p42;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ew0;->w1(Lcom/shabakaty/downloader/gz0;)V

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
