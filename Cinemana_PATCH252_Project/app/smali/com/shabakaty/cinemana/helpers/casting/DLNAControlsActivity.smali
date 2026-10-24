.class public final Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;
.super Lcom/shabakaty/downloader/xi;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/u2;",
        "Lcom/shabakaty/downloader/vj;",
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/vj;",
        ">;>;",
        "Lcom/shabakaty/downloader/vj;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/u2;",
        "Lcom/shabakaty/downloader/vj;",
        "Lcom/shabakaty/downloader/xk;",
        "Lcom/shabakaty/downloader/tu0;",
        "event",
        "Lcom/shabakaty/downloader/qv4;",
        "onDlnaNotificationEvent",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic E:I


# instance fields
.field public A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public B:Lcom/connectsdk/service/capability/MediaControl;

.field public C:Lcom/connectsdk/service/DLNAService;

.field public D:Z

.field public v:Lcom/shabakaty/downloader/n24;

.field public w:Lcom/shabakaty/downloader/mu0;

.field public x:J

.field public y:J

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d001c

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/xk<",
            "Lcom/shabakaty/downloader/vj;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->z:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/u2;

    iget-object v0, v0, Lcom/shabakaty/downloader/u2;->V:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$a;

    invoke-direct {v6, p0, v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$a;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120155

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/u2;

    iget-object v0, v0, Lcom/shabakaty/downloader/u2;->V:Landroid/widget/ImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$b;

    invoke-direct {v6, p0, v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$b;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->m0()Lcom/shabakaty/downloader/n24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->z:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->k0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m0()Lcom/shabakaty/downloader/n24;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->v:Lcom/shabakaty/downloader/n24;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settings"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->p(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "VideoModelArg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "VIDEO_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->Y:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->P:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 15
    :goto_1
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->m0()Lcom/shabakaty/downloader/n24;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->Y:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    new-instance v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$c;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 25
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 26
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->O:Landroid/widget/ImageButton;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 28
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->U:Landroid/widget/ImageButton;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 30
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->Q:Landroid/widget/ImageView;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 32
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->R:Landroid/widget/ImageButton;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->k0()V

    .line 34
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 35
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->V:Landroid/widget/ImageView;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 37
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->T:Landroid/widget/ImageView;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 39
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->M:Landroid/widget/ImageView;

    new-instance v0, Lcom/shabakaty/downloader/ai0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ai0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 41
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f060061

    .line 42
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result v1

    .line 43
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 46
    check-cast p1, Lcom/shabakaty/downloader/u2;

    iget-object p1, p1, Lcom/shabakaty/downloader/u2;->S:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 47
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result v0

    .line 48
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final onDlnaNotificationEvent(Lcom/shabakaty/downloader/tu0;)V
    .locals 4
    .annotation runtime Lcom/shabakaty/downloader/cf4;
        threadMode = .enum Lcom/shabakaty/downloader/bn4;->s:Lcom/shabakaty/downloader/bn4;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/tu0;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/tu0;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/shabakaty/downloader/tu0;->f:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Lcom/connectsdk/service/DLNAService;->getMediaControl()Lcom/connectsdk/service/capability/MediaControl;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    if-eq v0, v2, :cond_7

    .line 7
    :cond_4
    invoke-static {}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez v0, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcom/connectsdk/service/DLNAService;->getMediaControl()Lcom/connectsdk/service/capability/MediaControl;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/tu0;->a:Lcom/connectsdk/service/DLNAService;

    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->C:Lcom/connectsdk/service/DLNAService;

    if-nez v1, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    new-instance p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity$d;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    invoke-interface {v1, p1}, Lcom/connectsdk/service/capability/MediaControl;->getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V

    .line 12
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->p0()V

    :cond_7
    :goto_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->w:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 2
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->m(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStop()V

    return-void
.end method

.method public final p0()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/t43;->f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/f00;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v3, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/o5;->t:Lcom/shabakaty/downloader/o5;

    sget-object v4, Lcom/shabakaty/downloader/n5;->u:Lcom/shabakaty/downloader/n5;

    .line 6
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->w:Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method
