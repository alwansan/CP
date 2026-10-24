.class Lzendesk/support/request/DocumentRenderer;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;,
        Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;,
        Lzendesk/support/request/DocumentRenderer$HtmlParser;,
        Lzendesk/support/request/DocumentRenderer$Node;,
        Lzendesk/support/request/DocumentRenderer$Style;
    }
.end annotation


# instance fields
.field private final actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private final configHelper:Lcom/shabakaty/downloader/ua0;

.field private final configuration:Lcom/shabakaty/downloader/z90;

.field private final styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lcom/shabakaty/downloader/ua0;Lcom/shabakaty/downloader/z90;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-direct {v0, p1}, Lzendesk/support/request/DocumentRenderer$Style$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lcom/shabakaty/downloader/ua0;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lcom/shabakaty/downloader/z90;

    return-void
.end method

.method public constructor <init>(Lzendesk/support/request/DocumentRenderer$Style$Factory;Lzendesk/core/ActionHandlerRegistry;Lcom/shabakaty/downloader/ua0;Lcom/shabakaty/downloader/z90;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    .line 8
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 9
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lcom/shabakaty/downloader/ua0;

    .line 10
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lcom/shabakaty/downloader/z90;

    return-void
.end method

.method private installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 0

    .line 1
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer;->linkifyAll(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->replaceUrlSpans(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method private static linkifyAll(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 8

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    .line 2
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 4
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {p0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private render(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/lang/CharSequence;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lzendesk/support/request/DocumentRenderer;->reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->trimSpannable(Landroid/text/Spannable;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method

.method private replaceUrlSpans(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 10

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 3
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 8
    new-instance v3, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;

    iget-object v7, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v8, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lcom/shabakaty/downloader/ua0;

    iget-object v9, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lcom/shabakaty/downloader/z90;

    invoke-direct {v3, v4, v7, v8, v9}, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;-><init>(Ljava/lang/String;Lzendesk/core/ActionHandlerRegistry;Lcom/shabakaty/downloader/ua0;Lcom/shabakaty/downloader/z90;)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getType()Lzendesk/support/request/DocumentRenderer$Node$Type;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Text:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/request/DocumentRenderer$Style$Factory;->getStyledText(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ol:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-eq v0, v2, :cond_1

    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ul:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Node;->access$000(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/DocumentRenderer$Node;

    .line 7
    invoke-static {v4}, Lzendesk/support/request/DocumentRenderer$Node;->access$100(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_parent"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-static {v4}, Lzendesk/support/request/DocumentRenderer$Node;->access$100(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_index"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/DocumentRenderer$Node;

    .line 11
    invoke-virtual {p0, v3}, Lzendesk/support/request/DocumentRenderer;->reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-virtual {v1, v0}, Lzendesk/support/request/DocumentRenderer$Style$Factory;->getStyleForType(Lzendesk/support/request/DocumentRenderer$Node$Type;)Lzendesk/support/request/DocumentRenderer$Style;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lzendesk/support/request/DocumentRenderer$Style;->applyStyle(Ljava/util/List;Ljava/util/Map;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public render(Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->getNodeTree()Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->render(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->getFallbackText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lzendesk/support/request/DocumentRenderer;->installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
