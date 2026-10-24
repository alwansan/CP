.class public final Lcom/shabakaty/downloader/j91$a;
.super Lcom/shabakaty/downloader/ui4;
.source "ExternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.ExternalSeasonFragment$scrollToSelected$1$1"
    f = "ExternalSeasonFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j91;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/f91;

.field public final synthetic w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f91;ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f91;",
            "I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/j91$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/j91$a;->v:Lcom/shabakaty/downloader/f91;

    iput p2, p0, Lcom/shabakaty/downloader/j91$a;->w:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/j91$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/j91$a;->v:Lcom/shabakaty/downloader/f91;

    iget v1, p0, Lcom/shabakaty/downloader/j91$a;->w:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/j91$a;-><init>(Lcom/shabakaty/downloader/f91;ILcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/j91$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/j91$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/j91$a;->v:Lcom/shabakaty/downloader/f91;

    iget v1, p0, Lcom/shabakaty/downloader/j91$a;->w:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/j91$a;-><init>(Lcom/shabakaty/downloader/f91;ILcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/j91$a;->v:Lcom/shabakaty/downloader/f91;

    sget v0, Lcom/shabakaty/downloader/f91;->P:I

    .line 3
    invoke-virtual {p1, p1}, Lcom/shabakaty/downloader/aj;->e2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/j91$a;->v:Lcom/shabakaty/downloader/f91;

    iget v0, p0, Lcom/shabakaty/downloader/j91$a;->w:I

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/kj1;

    iget-object v1, v1, Lcom/shabakaty/downloader/kj1;->O:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/shabakaty/downloader/le;

    invoke-direct {v2, p1, v0}, Lcom/shabakaty/downloader/le;-><init>(Lcom/shabakaty/downloader/f91;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
