.class public final Lcom/shabakaty/cinemana/local/LocalAccountActivity;
.super Landroid/app/Activity;
.source "LocalAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;
    }
.end annotation


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private background:I

.field private busy:Z

.field private content:Landroid/widget/LinearLayout;

.field private draftName:Ljava/lang/String;

.field private muted:I

.field private name:Landroid/widget/EditText;

.field private primary:I

.field private raised:I

.field private restartAfterImport:Z

.field private selected:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    return p1
.end method

.method static synthetic access$100(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->restartAfterImport:Z

    return p0
.end method

.method static synthetic access$300(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->render()V

    return-void
.end method

.method private button(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 2

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    if-eqz p3, :cond_16

    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->background:I

    goto :goto_18

    :cond_16
    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    :goto_18
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p3, :cond_20

    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    goto :goto_22

    :cond_20
    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    :goto_22
    const/16 p3, 0xc

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x34

    invoke-direct {p0, p3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result p3

    const/4 v1, -0x1

    invoke-direct {p1, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x10

    invoke-direct {p0, p3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda12;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private color(Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_2e

    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_2e

    iget p2, v0, Landroid/util/TypedValue;->data:I

    :cond_2e
    return p2
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private pick(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private read(Landroid/net/Uri;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_4e

    if-eqz p1, :cond_3d

    const/16 v1, 0x2000

    :try_start_11
    new-array v1, v1, [B

    :goto_13
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p2, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :cond_26
    new-instance p2, Ljava/io/IOException;

    const-string v1, "image limit"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_3b

    :try_start_32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4e

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3a
    return-object p2

    :catchall_3b
    move-exception p2

    goto :goto_45

    :cond_3d
    :try_start_3d
    new-instance p2, Ljava/io/IOException;

    const-string v1, "image unreadable"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_3b

    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p2

    if-eqz p1, :cond_59

    :try_start_51
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p2
.end method

.method private render()V
    .locals 14

    const-string v0, "cinColorBackground"

    const v1, -0xefedec

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->color(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->background:I

    const-string v0, "cinColorSurfaceRaised"

    const v1, -0xdfd8d3

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->color(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    const-string v0, "cinColorTextPrimary"

    const v1, -0xb0a09

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->color(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    const-string v0, "cinColorTextSecondary"

    const v1, -0x554f4b

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->color(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->muted:I

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->background:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v7

    const/16 v8, 0x1c

    invoke-direct {p0, v8}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v9

    invoke-virtual {v2, v4, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "\u062a\u0639\u062f\u064a\u0644"

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v4, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->background:I

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v4, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->background:I

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x34

    invoke-direct {p0, v9}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v9

    const/4 v10, -0x1

    invoke-direct {v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u2192"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const-string v7, "\u0631\u062c\u0648\u0639"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x30

    invoke-direct {p0, v9}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v9

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget v7, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0x18

    invoke-direct {p0, v6}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v7, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    iget v7, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    const/16 v12, 0x40

    invoke-direct {p0, v7, v12}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    const-string v7, "\u0635\u0648\u0631\u0629 \u0627\u0644\u062d\u0633\u0627\u0628"

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x70

    invoke-direct {p0, v12}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v13

    invoke-direct {p0, v12}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v12

    invoke-direct {v7, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v3

    invoke-virtual {v6, v7, v9, v3, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    if-nez v3, :cond_16b

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->name()Ljava/lang/String;

    move-result-object v3

    :cond_16b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u062a\u063a\u064a\u064a\u0631 \u0627\u0644\u0635\u0648\u0631\u0629"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    iget v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    invoke-direct {p0, v2, v5}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x2e

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v5}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u0627\u0644\u0645\u0644\u0641 \u0627\u0644\u0634\u062e\u0635\u064a"

    const/16 v2, 0x13

    invoke-direct {p0, v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->text(Ljava/lang/String;I)V

    const-string v0, "\u0627\u0644\u0627\u0633\u0645"

    const/16 v3, 0xe

    invoke-direct {p0, v0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->text(Ljava/lang/String;I)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    iget v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    iget v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->muted:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    const-string v3, "\u0627\u0633\u0645 \u0627\u0644\u0645\u0633\u062a\u062e\u062f\u0645"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    if-nez v3, :cond_1f2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->name()Ljava/lang/String;

    move-result-object v3

    :cond_1f2
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v3, v9

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    iget v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    invoke-direct {p0, v3, v5}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-direct {p0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v9, v5, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x36

    invoke-direct {p0, v6}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    const-string v3, "\u062d\u0641\u0638 \u0627\u0644\u062a\u063a\u064a\u064a\u0631\u0627\u062a"

    invoke-direct {p0, v3, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->raised:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v1

    invoke-direct {v3, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v8}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-direct {p0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u0627\u0644\u0646\u0633\u062e \u0627\u0644\u0627\u062d\u062a\u064a\u0627\u0637\u064a"

    invoke-direct {p0, v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->text(Ljava/lang/String;I)V

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda4;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    const-string v1, "\u062a\u0635\u062f\u064a\u0631 \u0646\u0633\u062e\u0629 \u0627\u062d\u062a\u064a\u0627\u0637\u064a\u0629"

    invoke-direct {p0, v1, v0, v9}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda5;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    const-string v1, "\u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0646\u0633\u062e\u0629 \u0627\u062d\u062a\u064a\u0627\u0637\u064a\u0629"

    invoke-direct {p0, v1, v0, v9}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda6;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rounded(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private text(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x13

    if-lt p2, p1, :cond_13

    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->primary:I

    goto :goto_15

    :cond_13
    iget p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->muted:I

    :goto_15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result p1

    const/16 p2, 0xa

    invoke-direct {p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->dp(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    const-string v0, "\u062c\u0627\u0631\u064d \u0627\u0644\u062a\u0646\u0641\u064a\u0630\u2026"

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->toast(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$button$9$com-shabakaty-cinemana-local-LocalAccountActivity(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    iget-boolean p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    if-nez p2, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method synthetic lambda$onActivityResult$10$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/net/Uri;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x800000

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->read(Landroid/net/Uri;I)[B

    move-result-object p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v4, "invalid image"

    if-lez v2, :cond_6a

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_6a

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-long v5, v2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-long v7, v2

    mul-long v5, v5, v7

    const-wide/32 v7, 0x5f5e100

    cmp-long v2, v5, v7

    if-gtz v2, :cond_6a

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :goto_31
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v5

    const/16 v5, 0x200

    if-le v1, v5, :cond_47

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_31

    :cond_47
    array-length v0, p1

    invoke-static {p1, v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_64

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->selected:[B

    return-void

    :cond_64
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$onActivityResult$11$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->flushProgress()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    const-string v1, "legacy_seeded"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotLegacy(Z)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cinemana-account-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "application/zip"

    invoke-static {v1, p1, v2, v0}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8a

    :try_start_53
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_81

    if-eqz v0, :cond_6e

    :try_start_5f
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->exportZip(Ljava/io/OutputStream;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6c

    if-eqz v0, :cond_6b

    :try_start_68
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_81

    :cond_6b
    return-void

    :catchall_6c
    move-exception v1

    goto :goto_76

    :cond_6e
    :try_start_6e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "document not writable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_6c

    :goto_76
    if-eqz v0, :cond_80

    :try_start_78
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v0

    :try_start_7d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_81

    :catch_81
    move-exception v0

    :try_start_82
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_89

    :catch_89
    throw v0

    :cond_8a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "document not created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$onActivityResult$12$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_28

    :try_start_a
    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->importAccount(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_26

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_12
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->selected:[B

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->restoreLegacy()V

    const-string p1, "ui_refresh_after_import"

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->restartAfterImport:Z

    return-void

    :catchall_26
    move-exception v0

    goto :goto_30

    :cond_28
    :try_start_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "document not readable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_26

    :goto_30
    if-eqz p1, :cond_3a

    :try_start_32
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw v0
.end method

.method synthetic lambda$render$0$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->finish()V

    return-void
.end method

.method synthetic lambda$render$1$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->busy:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    const-string p1, "image/*"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->pick(Ljava/lang/String;I)V

    :cond_16
    return-void
.end method

.method synthetic lambda$render$2$com-shabakaty-cinemana-local-LocalAccountActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->selected:[B

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v1

    :cond_c
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->profile(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->selected:[B

    return-void
.end method

.method synthetic lambda$render$3$com-shabakaty-cinemana-local-LocalAccountActivity()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "\u0627\u0643\u062a\u0628 \u0627\u0644\u0627\u0633\u0645 \u0623\u0648\u0644\u0627\u064b"

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_1a
    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    const-string v0, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u062a\u063a\u064a\u064a\u0631\u0627\u062a"

    invoke-direct {p0, v1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$render$4$com-shabakaty-cinemana-local-LocalAccountActivity()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$render$5$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "application/zip"

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->pick(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$render$6$com-shabakaty-cinemana-local-LocalAccountActivity()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->draftName:Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0646\u0633\u062e\u0629 \u0627\u062d\u062a\u064a\u0627\u0637\u064a\u0629"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0633\u062a\u064f\u0633\u062a\u0628\u062f\u0644 \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0633\u0627\u0628 \u0627\u0644\u062d\u0627\u0644\u064a\u0629 \u0628\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u0646\u0633\u062e\u0629 \u0627\u0644\u0645\u062e\u062a\u0627\u0631\u0629."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda7;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    const-string v2, "\u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u0645\u0644\u0641"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$render$7$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_28

    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "drawable"

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ic_profile"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->avatar:Landroid/widget/ImageView;

    if-nez p1, :cond_25

    const p1, 0x1080048

    :cond_25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method synthetic lambda$render$8$com-shabakaty-cinemana-local-LocalAccountActivity()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->selected:[B

    if-nez v0, :cond_c

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v0

    :cond_c
    array-length v1, v0

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto :goto_17

    :cond_11
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_17
    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v0

    const-string v1, "profile_load"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3c

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_3c

    :cond_f
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_21

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda8;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/net/Uri;)V

    const-string p2, "\u062a\u0645 \u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u0635\u0648\u0631\u0629\u061b \u0627\u0636\u063a\u0637 \u062d\u0641\u0638 \u0627\u0644\u062a\u063a\u064a\u064a\u0631\u0627\u062a"

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    goto :goto_3c

    :cond_21
    const/4 p3, 0x2

    if-ne p1, p3, :cond_2f

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda9;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/net/Uri;)V

    const-string p2, "\u062a\u0645 \u062a\u0635\u062f\u064a\u0631 \u0627\u0644\u0646\u0633\u062e\u0629 \u0625\u0644\u0649 \u0627\u0644\u0645\u062c\u0644\u062f \u0627\u0644\u0645\u062e\u062a\u0627\u0631"

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    goto :goto_3c

    :cond_2f
    const/4 p3, 0x3

    if-ne p1, p3, :cond_3c

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda10;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/net/Uri;)V

    const-string p2, "\u062a\u0645 \u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0627\u0644\u062d\u0633\u0627\u0628 \u0648\u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0628\u064a\u0627\u0646\u0627\u062a"

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->render()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_20

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_20

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10a

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_20
    return-void
.end method
