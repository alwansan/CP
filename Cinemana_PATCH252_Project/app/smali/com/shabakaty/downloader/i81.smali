.class public Lcom/shabakaty/downloader/i81;
.super Lcom/shabakaty/downloader/r9;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/i81$a;,
        Lcom/shabakaty/downloader/i81$b;
    }
.end annotation


# static fields
.field public static final synthetic f0:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Landroid/widget/TextView;

.field public M:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public N:Landroid/widget/ImageView;

.field public O:Landroid/widget/ImageView;

.field public P:[I

.field public Q:[Landroid/widget/ImageView;

.field public R:Landroid/view/View;

.field public S:Landroid/view/View;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Lcom/shabakaty/downloader/sm5;

.field public Z:Lcom/shabakaty/downloader/wu4;

.field public a0:Lcom/shabakaty/downloader/y14;

.field public b0:Z

.field public c0:Z

.field public d0:Ljava/util/Timer;

.field public e0:Ljava/lang/String;

.field public final r:Lcom/shabakaty/downloader/z14;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/z14<",
            "Lcom/shabakaty/downloader/xw;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/br3$b;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r9;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/i81$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/i81$b;-><init>(Lcom/shabakaty/downloader/i81;Lcom/shabakaty/downloader/st5;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/i81;->r:Lcom/shabakaty/downloader/z14;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/i81$a;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/i81$a;-><init>(Lcom/shabakaty/downloader/i81;Lcom/shabakaty/downloader/st5;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/i81;->s:Lcom/shabakaty/downloader/br3$b;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/i81;->Q:[Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f0a00c5

    if-ne p3, p2, :cond_0

    const/4 p2, 0x4

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const p2, 0x7f0a00c4

    if-eq p3, p2, :cond_7

    const p2, 0x7f0a00c8

    const-string v0, "Must be called from the main thread."

    if-ne p3, p2, :cond_1

    .line 3
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->v:I

    .line 5
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->u:I

    .line 7
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 8
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->w:I

    .line 9
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 12
    sget-object p2, Lcom/shabakaty/downloader/lw6;->E:Lcom/shabakaty/downloader/lw6;

    invoke-static {p2}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/j56;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/j56;-><init>(Lcom/shabakaty/downloader/wu4;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/yq5;

    iget-object v2, p4, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/yq5;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_1
    const p2, 0x7f0a00cb

    const/4 v1, 0x0

    if-ne p3, p2, :cond_2

    .line 15
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->x:I

    .line 17
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120073

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 21
    new-instance p2, Lcom/shabakaty/downloader/pa6;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/pa6;-><init>(Lcom/shabakaty/downloader/wu4;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p2, Lcom/shabakaty/downloader/gs5;

    invoke-direct {p2, p1, v1, v1}, Lcom/shabakaty/downloader/gs5;-><init>(Landroid/view/View;II)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_2
    const p2, 0x7f0a00ca

    if-ne p3, p2, :cond_3

    .line 23
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 24
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->y:I

    .line 25
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120072

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 29
    new-instance p2, Lcom/shabakaty/downloader/dg6;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/dg6;-><init>(Lcom/shabakaty/downloader/wu4;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p2, Lcom/shabakaty/downloader/gs5;

    const/4 p3, 0x1

    invoke-direct {p2, p1, v1, p3}, Lcom/shabakaty/downloader/gs5;-><init>(Landroid/view/View;II)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_3
    const p2, 0x7f0a00c9

    const-wide/16 v1, 0x7530

    if-ne p3, p2, :cond_4

    .line 31
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 32
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->z:I

    .line 33
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120070

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 37
    new-instance p2, Lcom/shabakaty/downloader/yk6;

    invoke-direct {p2, p4, v1, v2}, Lcom/shabakaty/downloader/yk6;-><init>(Lcom/shabakaty/downloader/wu4;J)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance p2, Lcom/shabakaty/downloader/mr5;

    iget-object p3, p4, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/mr5;-><init>(Landroid/view/View;Lcom/shabakaty/downloader/de5;)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_4
    const p2, 0x7f0a00c6

    if-ne p3, p2, :cond_5

    .line 39
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 40
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->A:I

    .line 41
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120062

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 45
    new-instance p2, Lcom/shabakaty/downloader/uo6;

    invoke-direct {p2, p4, v1, v2}, Lcom/shabakaty/downloader/uo6;-><init>(Lcom/shabakaty/downloader/wu4;J)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p2, Lcom/shabakaty/downloader/yo5;

    iget-object p3, p4, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/yo5;-><init>(Landroid/view/View;Lcom/shabakaty/downloader/de5;)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_5
    const p2, 0x7f0a00c7

    if-ne p3, p2, :cond_6

    .line 47
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->B:I

    .line 49
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 52
    new-instance p2, Lcom/shabakaty/downloader/g06;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/g06;-><init>(Lcom/shabakaty/downloader/wu4;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance p2, Lcom/shabakaty/downloader/lq5;

    iget-object p3, p4, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/lq5;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void

    :cond_6
    const p2, 0x7f0a00c3

    if-ne p3, p2, :cond_7

    .line 54
    iget p2, p0, Lcom/shabakaty/downloader/i81;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    iget p2, p0, Lcom/shabakaty/downloader/i81;->H:I

    iget p3, p0, Lcom/shabakaty/downloader/i81;->C:I

    .line 56
    invoke-static {p0, p2, p3}, Lcom/shabakaty/downloader/eg6;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 59
    new-instance p2, Lcom/shabakaty/downloader/a07;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/a07;-><init>(Lcom/shabakaty/downloader/wu4;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance p2, Lcom/shabakaty/downloader/go5;

    iget-object p3, p4, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/go5;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    :cond_7
    return-void
.end method

.method public final h0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i81;->r()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 6
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/k2;->q(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v6, "com.google.android.gms.cast.metadata.ARTIST"

    if-nez v2, :cond_5

    .line 8
    iget v2, v0, Lcom/shabakaty/downloader/ip2;->t:I

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, v5

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v6

    goto :goto_0

    :cond_3
    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    goto :goto_0

    :cond_4
    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/k2;->p(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public final k0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->a0:Lcom/shabakaty/downloader/y14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xw;->j()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/i81;->L:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120052

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->L:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m0()V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/i81;->r()Lcom/shabakaty/downloader/br3;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v2

    .line 4
    iget-boolean v2, v2, Lcom/shabakaty/downloader/dr2;->I:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_8

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->N:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 8
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/eg6;->a:Lcom/shabakaty/downloader/pk2;

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v2, v9, v6

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string v10, "Begin blurring bitmap %s, original width = %d, original height = %d."

    .line 11
    invoke-virtual {v7, v10, v9}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 14
    invoke-static {v2, v9, v10, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-static {v9, v10, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 16
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v13

    .line 17
    invoke-static {v13, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v14

    .line 18
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v15

    .line 19
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v14}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v14, 0x40f00000    # 7.5f

    .line 21
    invoke-virtual {v4, v14}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 22
    invoke-virtual {v4, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 23
    invoke-virtual {v15, v12}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {v13}, Landroid/renderscript/RenderScript;->destroy()V

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v11

    const-string v2, "End blurring bitmap %s, original width = %d, original height = %d."

    .line 26
    invoke-virtual {v7, v2, v4}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_1

    .line 27
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/dr2;->W0()Lcom/shabakaty/downloader/h4;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v4, v2, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    .line 31
    iget-object v2, v2, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    move-object/from16 v16, v4

    move-object v4, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 32
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 33
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 34
    iget-object v4, v0, Lcom/shabakaty/downloader/i81;->Y:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    .line 35
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->S:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 36
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->e0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->e0:Ljava/lang/String;

    .line 38
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 39
    iget-object v4, v0, Lcom/shabakaty/downloader/i81;->Y:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    .line 40
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->S:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 41
    :cond_4
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->S:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :goto_1
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->V:Landroid/widget/TextView;

    .line 45
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v3, v16

    .line 46
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    .line 48
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->V:Landroid/widget/TextView;

    iget v3, v0, Lcom/shabakaty/downloader/i81;->I:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3

    .line 49
    :cond_7
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->V:Landroid/widget/TextView;

    iget v3, v0, Lcom/shabakaty/downloader/i81;->I:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    :goto_3
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i81;->p0(Lcom/shabakaty/downloader/br3;)V

    return-void

    .line 52
    :cond_8
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->X:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/shabakaty/downloader/ji1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/i81;->a0:Lcom/shabakaty/downloader/y14;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 5
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/wu4;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/wu4;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->s:Lcom/shabakaty/downloader/br3$b;

    const-string v3, "Must be called from the main thread."

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 8
    iput-object v2, v1, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    const v1, 0x7f0d0034

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/r9;->setContentView(I)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v4, 0x7f0403f3

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->t:I

    .line 12
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x0

    .line 13
    sget-object v4, Lcom/shabakaty/downloader/xl3;->a:[I

    const v6, 0x7f0400c0

    const v7, 0x7f1300f1

    .line 14
    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, 0x7

    .line 15
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->H:I

    const/16 v4, 0x10

    .line 16
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->u:I

    const/16 v4, 0xf

    .line 17
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->v:I

    const/16 v4, 0x1a

    .line 18
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->w:I

    const/16 v4, 0x19

    .line 19
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->x:I

    const/16 v4, 0x18

    .line 20
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->y:I

    const/16 v4, 0x11

    .line 21
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->z:I

    const/16 v4, 0xc

    .line 22
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->A:I

    const/16 v4, 0xe

    .line 23
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->B:I

    const/16 v4, 0x8

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->C:I

    const/16 v4, 0x9

    .line 25
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 28
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v0, Lcom/shabakaty/downloader/i81;->P:[I

    const/4 v7, 0x0

    .line 29
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 30
    iget-object v8, v0, Lcom/shabakaty/downloader/i81;->P:[I

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_3
    new-array v4, v6, [I

    .line 32
    fill-array-data v4, :array_0

    iput-object v4, v0, Lcom/shabakaty/downloader/i81;->P:[I

    :goto_2
    const/16 v4, 0xb

    .line 33
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->G:I

    .line 34
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/i81;->D:I

    const/4 v4, 0x3

    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v0, Lcom/shabakaty/downloader/i81;->E:I

    const/4 v7, 0x6

    .line 38
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v0, Lcom/shabakaty/downloader/i81;->F:I

    const/4 v7, 0x5

    .line 40
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/shabakaty/downloader/i81;->I:I

    .line 41
    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/shabakaty/downloader/i81;->J:I

    const/4 v7, 0x2

    .line 42
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/shabakaty/downloader/i81;->K:I

    const/16 v8, 0xa

    .line 43
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_4

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/shabakaty/downloader/i81;->e0:Ljava/lang/String;

    .line 45
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x7f0a01b6

    .line 46
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    const v9, 0x7f0a0090

    .line 47
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/shabakaty/downloader/i81;->N:Landroid/widget/ImageView;

    const v9, 0x7f0a009e

    .line 48
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/shabakaty/downloader/i81;->O:Landroid/widget/ImageView;

    const v9, 0x7f0a0091

    .line 49
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 50
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget-object v14, v0, Lcom/shabakaty/downloader/i81;->N:Landroid/widget/ImageView;

    new-instance v13, Lcom/shabakaty/downloader/wy1;

    iget v10, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v13, v6, v10, v9}, Lcom/shabakaty/downloader/wy1;-><init>(III)V

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 54
    new-instance v6, Lcom/shabakaty/downloader/fp5;

    iget-object v12, v8, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    move-object v10, v6

    move-object v11, v14

    move-object v4, v14

    move v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/shabakaty/downloader/fp5;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/shabakaty/downloader/wy1;ILandroid/view/View;)V

    invoke-virtual {v8, v4, v6}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    const v4, 0x7f0a0471

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shabakaty/downloader/i81;->L:Landroid/widget/TextView;

    const v4, 0x7f0a0271

    .line 56
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 57
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 58
    iget v9, v0, Lcom/shabakaty/downloader/i81;->G:I

    if-eqz v9, :cond_5

    .line 59
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 61
    new-instance v6, Lcom/shabakaty/downloader/eq5;

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/eq5;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v4, v6}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    const v4, 0x7f0a0461

    .line 62
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a0178

    .line 63
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0a03fb

    .line 64
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    const v9, 0x7f0a00d1

    .line 65
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    iput-object v9, v0, Lcom/shabakaty/downloader/i81;->M:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    const-wide/16 v10, 0x3e8

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/shabakaty/downloader/lw6;->F:Lcom/shabakaty/downloader/lw6;

    invoke-static {v3}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    .line 68
    new-instance v3, Lcom/shabakaty/downloader/gv6;

    invoke-direct {v3, v8}, Lcom/shabakaty/downloader/gv6;-><init>(Lcom/shabakaty/downloader/wu4;)V

    .line 69
    iput-object v3, v9, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$c;

    .line 70
    new-instance v3, Lcom/shabakaty/downloader/no5;

    iget-object v12, v8, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/shabakaty/downloader/no5;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;JLcom/shabakaty/downloader/de5;)V

    invoke-virtual {v8, v9, v3}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    .line 71
    new-instance v3, Lcom/shabakaty/downloader/ov5;

    .line 72
    iget-object v9, v8, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 73
    invoke-direct {v3, v4, v9}, Lcom/shabakaty/downloader/ov5;-><init>(Landroid/widget/TextView;Lcom/shabakaty/downloader/de5;)V

    .line 74
    invoke-virtual {v8, v4, v3}, Lcom/shabakaty/downloader/wu4;->l(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    .line 75
    new-instance v3, Lcom/shabakaty/downloader/jv5;

    .line 76
    iget-object v4, v8, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 77
    invoke-direct {v3, v6, v4}, Lcom/shabakaty/downloader/jv5;-><init>(Landroid/widget/TextView;Lcom/shabakaty/downloader/de5;)V

    .line 78
    invoke-virtual {v8, v6, v3}, Lcom/shabakaty/downloader/wu4;->l(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    const v3, 0x7f0a026f

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 80
    iget-object v4, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    new-instance v6, Lcom/shabakaty/downloader/uv5;

    .line 81
    iget-object v9, v4, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 82
    invoke-direct {v6, v3, v9}, Lcom/shabakaty/downloader/uv5;-><init>(Landroid/view/View;Lcom/shabakaty/downloader/de5;)V

    .line 83
    invoke-virtual {v4, v3, v6}, Lcom/shabakaty/downloader/wu4;->l(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    const v3, 0x7f0a04c5

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 85
    new-instance v4, Lcom/shabakaty/downloader/bw5;

    iget-object v6, v0, Lcom/shabakaty/downloader/i81;->M:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    iget-object v9, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    .line 86
    iget-object v9, v9, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 87
    invoke-direct {v4, v3, v6, v9}, Lcom/shabakaty/downloader/bw5;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/shabakaty/downloader/de5;)V

    .line 88
    iget-object v6, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    invoke-virtual {v6, v3, v4}, Lcom/shabakaty/downloader/wu4;->l(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    .line 89
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    .line 90
    iget-object v3, v3, Lcom/shabakaty/downloader/wu4;->d:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->Q:[Landroid/widget/ImageView;

    const v4, 0x7f0a00b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v3, v5

    .line 92
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->Q:[Landroid/widget/ImageView;

    const v6, 0x7f0a00b8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    aput-object v9, v3, v1

    .line 93
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->Q:[Landroid/widget/ImageView;

    const v9, 0x7f0a00b9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v10, v3, v7

    .line 94
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->Q:[Landroid/widget/ImageView;

    const v10, 0x7f0a00ba

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x3

    aput-object v11, v3, v12

    .line 95
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->P:[I

    aget v3, v3, v5

    invoke-virtual {v0, v2, v4, v3, v8}, Lcom/shabakaty/downloader/i81;->F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V

    .line 96
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->P:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v6, v3, v8}, Lcom/shabakaty/downloader/i81;->F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V

    const v3, 0x7f0a00bb

    const v4, 0x7f0a00c8

    .line 97
    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/shabakaty/downloader/i81;->F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V

    .line 98
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->P:[I

    aget v3, v3, v7

    invoke-virtual {v0, v2, v9, v3, v8}, Lcom/shabakaty/downloader/i81;->F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V

    .line 99
    iget-object v3, v0, Lcom/shabakaty/downloader/i81;->P:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v2, v10, v3, v8}, Lcom/shabakaty/downloader/i81;->F(Landroid/view/View;IILcom/shabakaty/downloader/wu4;)V

    const v2, 0x7f0a0061

    .line 100
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    const v3, 0x7f0a0062

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    .line 102
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->S:Landroid/view/View;

    .line 103
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->V:Landroid/widget/TextView;

    .line 104
    iget v3, v0, Lcom/shabakaty/downloader/i81;->F:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->V:Landroid/widget/TextView;

    iget v3, v0, Lcom/shabakaty/downloader/i81;->D:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 106
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->R:Landroid/view/View;

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    const v2, 0x7f0a0068

    .line 107
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->X:Landroid/widget/TextView;

    const v2, 0x7f0a0067

    .line 108
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    .line 109
    new-instance v3, Lcom/shabakaty/downloader/k56;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/k56;-><init>(Lcom/shabakaty/downloader/i81;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a04c3

    .line 110
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 111
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/k2;->m(Z)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v2

    const v3, 0x7f0802af

    .line 115
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/k2;->n(I)V

    .line 116
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/i81;->k0()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/i81;->h0()V

    .line 118
    iget-object v2, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget v3, v0, Lcom/shabakaty/downloader/i81;->K:I

    if-eqz v3, :cond_9

    .line 119
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 120
    iget v1, v0, Lcom/shabakaty/downloader/i81;->J:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_4

    .line 121
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, v0, Lcom/shabakaty/downloader/i81;->J:I

    .line 122
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 123
    :goto_4
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    iget v2, v0, Lcom/shabakaty/downloader/i81;->E:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    iget v2, v0, Lcom/shabakaty/downloader/i81;->K:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :cond_9
    new-instance v1, Lcom/shabakaty/downloader/sm5;

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/wy1;

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/shabakaty/downloader/wy1;-><init>(III)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/wy1;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/i81;->Y:Lcom/shabakaty/downloader/sm5;

    .line 128
    new-instance v2, Lcom/shabakaty/downloader/st5;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/st5;-><init>(Lcom/shabakaty/downloader/i81;)V

    .line 129
    iput-object v2, v1, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    .line 130
    sget-object v1, Lcom/shabakaty/downloader/lw6;->u:Lcom/shabakaty/downloader/lw6;

    invoke-static {v1}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a00c5
        0x7f0a00c5
        0x7f0a00c5
        0x7f0a00c5
    .end array-data
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->Y:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sm5;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    if-eqz v0, :cond_1

    const-string v1, "Must be called from the main thread."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->Z:Lcom/shabakaty/downloader/wu4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wu4;->s()V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/wu4;->b:Lcom/shabakaty/downloader/y14;

    if-eqz v1, :cond_0

    .line 10
    const-class v3, Lcom/shabakaty/downloader/xw;

    invoke-virtual {v1, v0, v3}, Lcom/shabakaty/downloader/y14;->e(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    .line 11
    :cond_0
    iput-object v2, v0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    .line 12
    :cond_1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/i81;->r:Lcom/shabakaty/downloader/z14;

    const-class v2, Lcom/shabakaty/downloader/xw;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/y14;->e(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    .line 4
    invoke-super {p0}, Lcom/shabakaty/downloader/ji1;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/i81;->r:Lcom/shabakaty/downloader/z14;

    const-class v2, Lcom/shabakaty/downloader/xw;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/y14;->a(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Must be called from the main thread."

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/s14;->a:Lcom/shabakaty/downloader/ge7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ge7;->n()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v3, Lcom/shabakaty/downloader/s14;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "isConnecting"

    aput-object v5, v4, v2

    const-class v5, Lcom/shabakaty/downloader/ge7;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Unable to call %s on %s."

    .line 10
    invoke-virtual {v3, v0, v5, v4}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i81;->r()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/i81;->b0:Z

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i81;->k0()V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i81;->m0()V

    .line 16
    invoke-super {p0}, Lcom/shabakaty/downloader/ji1;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    xor-int/lit8 p1, p1, 0x2

    xor-int/lit8 p1, p1, 0x4

    xor-int/lit16 p1, p1, 0x1000

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    :cond_0
    return-void
.end method

.method public final p0(Lcom/shabakaty/downloader/br3;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/i81;->b0:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dr2;->W0()Lcom/shabakaty/downloader/h4;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5
    iget-wide v1, v0, Lcom/shabakaty/downloader/h4;->A:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    .line 6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/i81;->c0:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/h06;

    invoke-direct {v4, p0, p1}, Lcom/shabakaty/downloader/h06;-><init>(Lcom/shabakaty/downloader/i81;Lcom/shabakaty/downloader/br3;)V

    .line 8
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/i81;->d0:Ljava/util/Timer;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    .line 9
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 10
    iput-boolean v2, p0, Lcom/shabakaty/downloader/i81;->c0:Z

    .line 11
    :cond_1
    iget-wide v0, v0, Lcom/shabakaty/downloader/h4;->A:J

    .line 12
    iget-object v3, p1, Lcom/shabakaty/downloader/br3;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Must be called from the main thread."

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 14
    iget-object v5, p1, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 15
    iget-wide v6, v5, Lcom/shabakaty/downloader/oh5;->e:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_6

    iget-object p1, v5, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    if-nez p1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iget-object v4, p1, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    if-nez v4, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dr2;->W0()Lcom/shabakaty/downloader/h4;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iget-object v6, v5, Lcom/shabakaty/downloader/oh5;->f:Lcom/shabakaty/downloader/dr2;

    .line 19
    iget-wide v7, v6, Lcom/shabakaty/downloader/dr2;->u:D

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_5

    .line 20
    iget v6, v6, Lcom/shabakaty/downloader/dr2;->v:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_5
    move-wide v6, v9

    .line 21
    :goto_0
    iget-wide v8, v4, Lcom/shabakaty/downloader/j4;->s:J

    .line 22
    iget-wide v10, p1, Lcom/shabakaty/downloader/h4;->t:J

    .line 23
    invoke-virtual/range {v5 .. v11}, Lcom/shabakaty/downloader/oh5;->h(DJJ)J

    move-result-wide v8

    .line 24
    :cond_6
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v8

    long-to-float p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    .line 25
    iget-boolean p1, p0, Lcom/shabakaty/downloader/i81;->c0:Z

    if-eqz p1, :cond_7

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/i81;->d0:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 27
    iput-boolean v1, p0, Lcom/shabakaty/downloader/i81;->c0:Z

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->X:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005f

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr p1, v5

    float-to-double v5, p1

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 35
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/shabakaty/downloader/i81;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_2
    return-void
.end method

.method public final r()Lcom/shabakaty/downloader/br3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81;->a0:Lcom/shabakaty/downloader/y14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
