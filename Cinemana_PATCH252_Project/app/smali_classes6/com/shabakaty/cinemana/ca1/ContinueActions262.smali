.class public final Lcom/shabakaty/cinemana/ca1/ContinueActions262;
.super Ljava/lang/Object;
.source "ContinueActions262.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;,
        Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;
    }
.end annotation


# static fields
.field private static final MENU_ID:I = 0x262106

.field private static final bound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;",
            ">;"
        }
    .end annotation
.end field

.field private static final details:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bound:Ljava/util/Map;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->details:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bound:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->work(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static action(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x30

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x18

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x15

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static attachMore(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    const-string v0, "c2"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "l"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    const-string v0, "getView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_42

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_42

    :cond_31
    new-instance v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;-><init>(Landroid/view/View;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$4;

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$4;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_43

    goto :goto_49

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception p0

    const-string v0, "continue_more_attach262"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_49
    return-void
.end method

.method private static bind(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "v"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bound:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    :cond_1a
    if-nez p1, :cond_1d

    return-void

    :cond_1d
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    return-void

    :cond_24
    const-string p2, "nb"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_31

    return-void

    :cond_31
    invoke-static {p0, p4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p4, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p4, v0, p1, p0, p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;-><init>(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;)V

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->paint()V

    new-instance p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$1;

    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$1;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p0

    const-string p1, "continue_bind262"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_55
    return-void
.end method

.method public static bindHorizontal(Ljava/lang/Object;Z)V
    .locals 3

    const-string v0, "T"

    const-string v1, "P"

    const-string v2, "U"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bind(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bindWide(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "S"

    :try_start_2
    const-string v1, "v"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->page(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v3, "R"

    const-string v4, "M"

    invoke-static {p0, v1, v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bind(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4f

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->resumeSubtitle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_3a

    const/16 v2, 0x8

    :cond_3a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "Q"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_4f

    :catch_49
    move-exception p0

    const-string v0, "continue_wide_bind262"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cleanTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ResumeDisplay263;->cleanTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static contentAdapter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz p0, :cond_44

    const/16 v2, 0x8

    if-ge v1, v2, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.recyclerview.widget.g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_23

    return-object p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video list"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    const-string v2, "f"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 p0, 0x0

    goto :goto_41

    :cond_3d
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video adapter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static detachMore(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    const-string v0, "getView"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->detach()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception p0

    const-string v0, "continue_more_detach262"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    :cond_f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :goto_14
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2b

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    return-object v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static interceptClick(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->isDetails()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->page(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    move-result-object p0

    :goto_10
    if-eqz p0, :cond_21

    iget-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz p2, :cond_21

    const-string p2, "nb"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->toggle(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    return v0
.end method

.method public static isDetails()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->details:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static label(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string v0, "customEnTitle"

    const-string v1, "enTitle"

    const-string v2, "customArTitle"

    const-string v3, "arTitle"

    const-string v4, "title"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x5

    if-ge v1, v2, :cond_26

    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->cleanTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    const-string p0, "\u0639\u0645\u0644 \u0628\u062f\u0648\u0646 \u0639\u0646\u0648\u0627\u0646"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static openDetails(Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V
    .locals 6

    const-string v0, "nb"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    const-string v3, "rootSeries"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_7b

    :try_start_27
    move-object v5, v2

    check-cast v5, Landroid/os/Parcelable;

    invoke-interface {v5, v4, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "CREATOR"

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_4c

    :catchall_47
    move-exception p1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_4c
    :goto_4c
    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_73

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->details:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5b} :catch_7b

    :try_start_5b
    const-string v3, "a"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    aput-object p0, v4, v2

    invoke-static {p1, v3, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_6c

    :try_start_68
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_92

    :catchall_6c
    move-exception p1

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->details:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    throw p1

    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing item listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception p1

    const-string v0, "continue_details262"

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u0639\u0645\u0644"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_92
    return-void
.end method

.method static page(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;
    .locals 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz p0, :cond_22

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_22

    sget-object v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    if-eqz v2, :cond_13

    return-object v2

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_1e

    check-cast p0, Landroid/view/View;

    goto :goto_1f

    :cond_1e
    move-object p0, v1

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-object v1
.end method

.method static popup(Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u25b2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x14

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xe

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/PopupWindow;

    const/16 v5, 0xf0

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v4, v1, v7, v8, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const-string v1, "\u0623\u0638\u0647\u0631 \u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u0639\u0645\u0644"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080041

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->action(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    const-string v2, "\u062d\u0630\u0641 \u0645\u0646 \u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v7, 0x108003c

    invoke-static {v0, v2, v7}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->action(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;

    invoke-direct {v3, v4, p0, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;

    invoke-direct {v1, v4, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;-><init>(Landroid/widget/PopupWindow;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->dp(Landroid/content/Context;I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v4, p0, p1, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method static remove(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->removeOnly(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_1f

    const/4 p0, 0x0

    goto :goto_25

    :cond_1f
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_25
    if-eqz p0, :cond_2a

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V

    :cond_2a
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->refresh()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_39

    :catch_49
    move-exception p0

    const-string v0, "continue_remove262"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4f
    return-void
.end method

.method static resumeSubtitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    const-string v2, "nb"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v2, "p"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-string v4, "d"

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide v6, v2

    move-wide v8, v4

    goto :goto_30

    :cond_2c
    const-wide/16 v2, 0x0

    move-wide v6, v2

    move-wide v8, v6

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_42

    const-string v0, "season"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "episodeNummer"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/cinemana/ca1/ResumeDisplay263;->subtitle(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method static text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, ""

    return-object p0
.end method

.method static tr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static visibility(Ljava/lang/Object;Z)V
    .locals 3

    :try_start_0
    const-string v0, "getView"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->pages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    if-eqz p0, :cond_2c

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->active:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->fallback:Landroid/widget/ImageButton;

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/16 v1, 0x8

    :goto_22
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception p0

    const-string p1, "continue_more_visibility264"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private static work(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "rootSeries"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3b
    return-object p0
.end method
