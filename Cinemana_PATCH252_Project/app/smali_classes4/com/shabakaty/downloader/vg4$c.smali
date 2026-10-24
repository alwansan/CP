.class public final Lcom/shabakaty/downloader/vg4$c;
.super Ljava/lang/Object;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t50;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vg4;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vg4;

.field public final synthetic b:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/vg4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vg4$c;->a:Lcom/shabakaty/downloader/vg4;

    iput-object p2, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/s50;Z)V
    .locals 10

    if-eqz p2, :cond_2

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ih4;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p1, Lcom/shabakaty/downloader/s50;->a:I

    .line 3
    :goto_0
    new-instance v2, Lcom/shabakaty/downloader/eh4;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v3}, Lcom/shabakaty/downloader/eh4;-><init>(Lcom/shabakaty/downloader/ih4;ILcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    invoke-static {p2}, Lcom/shabakaty/downloader/vg4;->h2(Lcom/shabakaty/downloader/vg4;)Lcom/shabakaty/downloader/wk1;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/wk1;->g0:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p1, Lcom/shabakaty/downloader/s50;->a:I

    .line 6
    :goto_1
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/vg4$d;

    iget-object p1, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    invoke-direct {v7, p1, v3}, Lcom/shabakaty/downloader/vg4$d;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/vg4$c;->b:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/vg4;->i2(Lcom/shabakaty/downloader/vg4;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/vg4$c;->a:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/vg4;->i2(Lcom/shabakaty/downloader/vg4;)V

    return-void
.end method
