.class public final Lcom/shabakaty/cinemana/utils/ExpandableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ExpandableTextView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R*\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00028B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/ExpandableTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "",
        "getTrimmedText",
        "<set-?>",
        "s",
        "Ljava/lang/CharSequence;",
        "getOriginalText",
        "()Ljava/lang/CharSequence;",
        "originalText",
        "",
        "value",
        "v",
        "I",
        "getTrimLength",
        "()I",
        "setTrimLength",
        "(I)V",
        "trimLength",
        "Landroid/text/Spannable;",
        "ellipsis$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getEllipsis",
        "()Landroid/text/Spannable;",
        "ellipsis",
        "getDisplayableText",
        "displayableText",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public static final synthetic w:I


# instance fields
.field public final r:Lcom/shabakaty/downloader/kf2;

.field public s:Ljava/lang/CharSequence;

.field public t:Ljava/lang/CharSequence;

.field public u:Z

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lcom/shabakaty/cinemana/utils/ExpandableTextView$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/cinemana/utils/ExpandableTextView$a;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->r:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->u:Z

    const p1, 0x7fffffff

    .line 5
    iput p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->v:I

    return-void
.end method

.method private final getDisplayableText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->t:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method private final getEllipsis()Landroid/text/Spannable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->r:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    return-object v0
.end method

.method private final getTrimmedText()Ljava/lang/CharSequence;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_7

    :cond_0
    new-array v3, v1, [C

    const/16 v4, 0x2e

    aput-char v4, v3, v2

    const-string v4, "<this>"

    .line 2
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "chars"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, -0x1

    add-int/2addr v5, v6

    if-ltz v5, :cond_6

    :goto_1
    add-int/lit8 v7, v5, -0x1

    .line 4
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 5
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_2

    add-int/lit8 v10, v9, 0x1

    .line 7
    aget-char v11, v3, v9

    if-ne v8, v11, :cond_1

    goto :goto_3

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_3
    if-ltz v9, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_4

    add-int/2addr v5, v1

    .line 8
    invoke-interface {v0, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    :cond_4
    if-gez v7, :cond_5

    goto :goto_5

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    :goto_5
    const-string v0, ""

    :goto_6
    if-nez v0, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_7
    iget v3, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->v:I

    if-le v0, v3, :cond_8

    .line 10
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->v:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-direct {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->getEllipsis()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_8

    .line 11
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    :goto_8
    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->getDisplayableText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTrimLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->v:I

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->s:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->getTrimmedText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->t:Ljava/lang/CharSequence;

    .line 3
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->e()V

    return-void
.end method

.method public final setTrimLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->v:I

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->getTrimmedText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->t:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->e()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ck;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/cinemana/utils/ExpandableTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
