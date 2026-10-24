.class public final Lcom/shabakaty/cinemana/helpers/casting/b;
.super Lcom/shabakaty/downloader/ui4;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity$onDlnaNotificationEvent$1$onSuccess$1"
    f = "DLNAControlsActivity.kt"
    l = {}
    m = "invokeSuspend"
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
.field public final synthetic v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/helpers/casting/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/b;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/cinemana/helpers/casting/b;

    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/b;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/helpers/casting/b;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/u2;

    iget-object p2, p2, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
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

    new-instance p1, Lcom/shabakaty/cinemana/helpers/casting/b;

    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/b;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/helpers/casting/b;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/b;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
