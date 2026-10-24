.class public final Lcom/shabakaty/cinemana/ca1/ThemeStudio142;
.super Landroid/app/Activity;
.source "ThemeStudio142.java"


# instance fields
.field private bottomOpacitySeek:Landroid/widget/SeekBar;

.field private bottomOpacityValue:Landroid/widget/TextView;

.field private final colorFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private glassSwitch:Landroid/widget/Switch;

.field private opacitySeek:Landroid/widget/SeekBar;

.field private opacityValue:Landroid/widget/TextView;

.field private preview:Landroid/widget/LinearLayout;

.field private previewButton:Landroid/widget/Button;

.field private previewSub:Landroid/widget/TextView;

.field private previewTitle:Landroid/widget/TextView;

.field private radiusSeek:Landroid/widget/SeekBar;

.field private radiusValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->colorFields:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->opacityValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->updatePreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->radiusValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->bottomOpacityValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->saveCustom()V

    return-void
.end method

.method private addColor(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 152
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->verticalSurface()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-direct {p0, p3, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p3

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0xa

    const/4 v7, 0x5

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->lp(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance p3, Landroid/widget/EditText;

    invoke-direct {p3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-static {p4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p4, "#RRGGBB"

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ca1_theme142_color_"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/16 p4, 0xa

    invoke-direct {p0, p4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p4

    invoke-virtual {p3, v1, v2, p4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object p4, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->colorFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 p2, 0x2c

    invoke-direct {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v3

    const/4 v2, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->lp(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->lp(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance p1, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$9;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$9;-><init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    return-void
.end method

.method private build()V
    .locals 8

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const-string v2, "cinColorBackground"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->canvas(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->header()Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x3c

    invoke-direct {p0, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v7

    invoke-direct {v6, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u0627\u0644\u0627\u0641\u062a\u0631\u0627\u0636\u064a"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->presetRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "Dark"

    const/4 v7, 0x1

    invoke-direct {p0, v3, v6, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->presetRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "OLED"

    const/4 v7, 0x2

    invoke-direct {p0, v3, v6, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->presetRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private color(Ljava/lang/String;I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->colorFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->parseColor(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private dp(I)I
    .locals 1

    .line 183
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private flatSurface(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 181
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private header()Landroid/widget/FrameLayout;
    .locals 8

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "cinColorSurface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 129
    const/16 v1, 0x16

    const/4 v2, 0x1

    const-string v3, "\u0627\u0644\u0645\u0638\u0647\u0631"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v3

    const/16 v4, 0x38

    invoke-direct {p0, v4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const-string v3, "ca1_theme142_back"

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ic_arrow_right"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 133
    :cond_0
    const-string v3, "cinColorTextPrimary"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const-string v3, "\u0631\u062c\u0648\u0639"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x34

    invoke-direct {p0, v5}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v5

    invoke-direct {v3, v5, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v2, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$7;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$7;-><init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-object v0
.end method

.method private lp(IIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 182
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p1

    invoke-direct {p0, p4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p2

    invoke-direct {p0, p5}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p3

    invoke-direct {p0, p6}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private presetRow(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result p2

    if-ne p2, p3, :cond_0

    const-string p2, "   \u2713"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ca1_theme142_preset_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 p2, 0x14

    invoke-direct {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v1

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p2, "cinColorSurfaceRaised"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x6

    invoke-direct {p0, p2, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->flatSurface(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;

    invoke-direct {p2, p0, p3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142$8;-><init>(Lcom/shabakaty/cinemana/ca1/ThemeStudio142;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private saveCustom()V
    .locals 23

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    .line 159
    iget-object v1, v15, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->glassSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iget-object v2, v15, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->opacitySeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    iget-object v3, v15, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->radiusSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, v15, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->bottomOpacitySeek:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    sget v5, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_CANVAS:I

    .line 160
    const-string v6, "canvas"

    invoke-direct {v15, v6, v5}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "surface"

    sget v7, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_SURFACE:I

    invoke-direct {v15, v6, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v6

    sget v7, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ELEVATED:I

    .line 161
    const-string v8, "elevated"

    invoke-direct {v15, v8, v7}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "raised"

    sget v9, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_RAISED:I

    invoke-direct {v15, v8, v9}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v8

    sget v9, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK:I

    .line 162
    const-string v10, "ink"

    invoke-direct {v15, v10, v9}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "inkMuted"

    sget v11, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_MUTED:I

    invoke-direct {v15, v10, v11}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v10

    sget v11, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_SUBTLE:I

    .line 163
    const-string v12, "inkSubtle"

    invoke-direct {v15, v12, v11}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "edge"

    sget v13, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_EDGE:I

    invoke-direct {v15, v12, v13}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v12

    sget v13, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ACCENT:I

    .line 164
    const-string v14, "accent"

    invoke-direct {v15, v14, v13}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "danger"

    move-object/from16 v20, v0

    sget v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_DANGER:I

    invoke-direct {v15, v14, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v14

    .line 165
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->topBar(Landroid/content/Context;)I

    move-result v0

    move/from16 v21, v1

    const-string v1, "topBar"

    invoke-direct {v15, v1, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v0

    move-object v1, v15

    move v15, v0

    const-string v0, "downloadsSurface"

    move/from16 v22, v2

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->downloadsSurface(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v16

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->playerSurface(Landroid/content/Context;)I

    move-result v0

    const-string v2, "playerSurface"

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v17

    const-string v0, "updaterSurface"

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->updaterSurface(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v18

    .line 167
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->bottomNavSurface(Landroid/content/Context;)I

    move-result v0

    const-string v2, "bottomNavSurface"

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v19

    .line 159
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static/range {v0 .. v19}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->saveCustom(Landroid/content/Context;ZIIIIIIIIIIIIIIIIII)V

    .line 168
    const-string v0, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u062b\u064a\u0645 \u0627\u0644\u0645\u062e\u0635\u0635"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->restartApp(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method private section(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 147
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "cinColorTextSecondary"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method private simpleSurface(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 11

    .line 148
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->verticalSurface()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->lp(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 1

    .line 179
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "cinColorTextPrimary"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x800013

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method

.method private themeColor(Ljava/lang/String;I)I
    .locals 3

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    :cond_2
    iget p1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    return p2
.end method

.method private toggle(Ljava/lang/String;Z)Landroid/widget/Switch;
    .locals 2

    .line 180
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "cinColorTextPrimary"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setTextColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    const p1, 0x800013

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setGravity(I)V

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result p1

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    const-string p1, "ca1_theme142_toggle"

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private updatePreview()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->preview:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "surface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ink"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "inkMuted"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "accent"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->accent(Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->color(Ljava/lang/String;I)I

    move-result v3

    .line 172
    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->opacitySeek:Landroid/widget/SeekBar;

    if-nez v4, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getSurfaceOpacity(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->opacitySeek:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    :goto_0
    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->radiusSeek:Landroid/widget/SeekBar;

    if-nez v5, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getCornerRadiusDp(Landroid/content/Context;)I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->radiusSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    .line 173
    :goto_1
    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->glassSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->glassSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    int-to-float v4, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result v0

    .line 174
    :cond_3
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v5}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->preview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->previewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->previewSub:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->modeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->previewSub:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->previewButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xc

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->previewButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private verticalSurface()Landroid/widget/LinearLayout;
    .locals 3

    .line 149
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "ca1_theme142_surface"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "cinColorSurfaceRaised"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->themeColor(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->flatSurface(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prepare(Landroid/app/Activity;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string p1, "\u0627\u0644\u0645\u0638\u0647\u0631"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->build()V

    .line 41
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->apply(Landroid/app/Activity;)V

    .line 42
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->updatePreview()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->apply(Landroid/app/Activity;)V

    .line 48
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ThemeStudio142;->updatePreview()V

    .line 49
    return-void
.end method
