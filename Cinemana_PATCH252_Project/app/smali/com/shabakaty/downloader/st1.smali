.class public final Lcom/shabakaty/downloader/st1;
.super Ljava/lang/Object;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ak1;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/st1;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/downloader/st1;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/downloader/st1;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "navHost"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/st1$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/st1;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v1, p0, Lcom/shabakaty/downloader/st1;->s:Lcom/shabakaty/downloader/lo3;

    iget-object v2, p0, Lcom/shabakaty/downloader/st1;->t:Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2}, Lcom/shabakaty/downloader/st1$a;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
