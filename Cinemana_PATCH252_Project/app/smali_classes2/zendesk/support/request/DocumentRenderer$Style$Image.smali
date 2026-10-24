.class public Lzendesk/support/request/DocumentRenderer$Style$Image;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"

# interfaces
.implements Lzendesk/support/request/DocumentRenderer$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer$Style$Image;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public applyStyle(Ljava/util/List;Ljava/util/Map;)Landroid/text/Spannable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    const-string p1, "src"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/qw1;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    .line 4
    invoke-static {v0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p2, Lcom/shabakaty/downloader/qw1;->h:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/rm3;->z(II)Lcom/shabakaty/downloader/n22;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/rm3;->t(Lcom/shabakaty/downloader/l22;I)Lcom/shabakaty/downloader/l22;

    move-result-object v1

    .line 7
    iget v5, v1, Lcom/shabakaty/downloader/l22;->r:I

    .line 8
    iget v6, v1, Lcom/shabakaty/downloader/l22;->s:I

    .line 9
    iget v1, v1, Lcom/shabakaty/downloader/l22;->t:I

    if-ltz v1, :cond_1

    if-gt v5, v6, :cond_3

    goto :goto_0

    :cond_1
    if-lt v5, v6, :cond_3

    .line 10
    :goto_0
    iget-object v7, p2, Lcom/shabakaty/downloader/qw1;->h:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    iget-object p2, p2, Lcom/shabakaty/downloader/qw1;->h:Ljava/util/List;

    add-int/2addr v5, v3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eq v5, v6, :cond_3

    add-int/2addr v5, v1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iget-object p2, p0, Lzendesk/support/request/DocumentRenderer$Style$Image;->resources:Landroid/content/res/Resources;

    const v0, 0x7f12022d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "Image"

    :goto_2
    aput-object v2, v0, v4

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-array p2, v3, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v4

    invoke-static {v0, p2}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->applySpans(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method
