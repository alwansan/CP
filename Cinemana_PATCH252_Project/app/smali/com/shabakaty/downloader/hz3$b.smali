.class public final Lcom/shabakaty/downloader/hz3$b;
.super Lcom/shabakaty/downloader/af2;
.source "SearchViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/hz3;-><init>(Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ff3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/gr2<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hz3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hz3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hz3$b;->r:Lcom/shabakaty/downloader/hz3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gr2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gr2;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/hz3$b;->r:Lcom/shabakaty/downloader/hz3;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/iz3;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/shabakaty/downloader/iz3;-><init>(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/gr2;I)V

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/gr2;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/iz3;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lcom/shabakaty/downloader/iz3;-><init>(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/gr2;I)V

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/gr2;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V

    return-object v0
.end method
