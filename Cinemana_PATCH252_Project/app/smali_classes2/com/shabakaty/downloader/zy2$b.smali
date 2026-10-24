.class public final Lcom/shabakaty/downloader/zy2$b;
.super Lcom/shabakaty/downloader/af2;
.source "NewCapturedType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zy2;->g(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zy2;
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
        "Lcom/shabakaty/downloader/qw4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zy2;

.field public final synthetic s:Lcom/shabakaty/downloader/ve2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/ve2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zy2$b;->r:Lcom/shabakaty/downloader/zy2;

    iput-object p2, p0, Lcom/shabakaty/downloader/zy2$b;->s:Lcom/shabakaty/downloader/ve2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2$b;->r:Lcom/shabakaty/downloader/zy2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zy2;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zy2$b;->s:Lcom/shabakaty/downloader/ve2;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/shabakaty/downloader/qw4;

    .line 8
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/qw4;->Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method
