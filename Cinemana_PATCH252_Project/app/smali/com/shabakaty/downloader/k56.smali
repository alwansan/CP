.class public final Lcom/shabakaty/downloader/k56;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i81;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k56;->r:Lcom/shabakaty/downloader/i81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/k56;->r:Lcom/shabakaty/downloader/i81;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k56;->r:Lcom/shabakaty/downloader/i81;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i81;->r()Lcom/shabakaty/downloader/br3;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must be called from the main thread."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/mf7;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/mf7;-><init>(Lcom/shabakaty/downloader/br3;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    :cond_1
    :goto_0
    return-void
.end method
