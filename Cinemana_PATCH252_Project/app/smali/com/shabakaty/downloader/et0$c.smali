.class public final Lcom/shabakaty/downloader/et0$c;
.super Landroidx/recyclerview/widget/j$b;
.source "DifferenceCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/et0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/et0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/et0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/et0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/et0<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/et0;->e:Lcom/shabakaty/downloader/ln1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/et0;->a:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/et0;->b:Ljava/util/List;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v0, p1, v2, p2}, Lcom/shabakaty/downloader/ln1;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/et0;->d:Lcom/shabakaty/downloader/ln1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/et0;->a:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/et0;->b:Ljava/util/List;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v0, p1, v2, p2}, Lcom/shabakaty/downloader/ln1;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/et0;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et0$c;->a:Lcom/shabakaty/downloader/et0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/et0;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
