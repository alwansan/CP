.class public final Lcom/shabakaty/downloader/hi0;
.super Lcom/shabakaty/downloader/ui4;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity$updateSeekBarProgress$1$onSuccess$1"
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
            "Lcom/shabakaty/downloader/hi0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

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
    new-instance p1, Lcom/shabakaty/downloader/hi0;

    iget-object v0, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/hi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/hi0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/hi0;

    iget-object v0, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/hi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 6
    iget-wide v1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->y:J

    const/16 v3, 0x64

    int-to-long v3, v3

    mul-long v1, v1, v3

    .line 7
    iget-wide v3, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->x:J

    .line 8
    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/hi0;->v:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    .line 11
    iget-wide v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->y:J

    .line 12
    iget-object v2, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast v2, Lcom/shabakaty/downloader/u2;

    iget-object v2, v2, Lcom/shabakaty/downloader/u2;->W:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->x:J

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/kf5;->k(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->X:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kf5;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
