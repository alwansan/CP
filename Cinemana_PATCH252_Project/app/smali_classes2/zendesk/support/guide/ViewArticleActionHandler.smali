.class public Lzendesk/support/guide/ViewArticleActionHandler;
.super Ljava/lang/Object;
.source "ViewArticleActionHandler.java"

# interfaces
.implements Lzendesk/core/ActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static data(JLjava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "help_center_article_id"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "help_center_article_title"

    .line 3
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/qw1;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lzendesk/support/guide/ViewArticleActionHandler;->parse(Lcom/shabakaty/downloader/qw1;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->isValid()Z

    move-result p1

    return p1
.end method

.method public getActionDescription()Lzendesk/core/ActionDescription;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handle(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ViewArticleActionHandle"

    const-string v0, "Property map is null, cannot open article."

    .line 1
    invoke-static {p2, v0, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "help_center_view_article"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/fe4;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/qw1;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lzendesk/support/guide/ViewArticleActionHandler;->parse(Lcom/shabakaty/downloader/qw1;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->access$000(Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "help_center_article_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->access$000(Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9
    const-class v2, Lcom/shabakaty/downloader/z90;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/va0;->b(Ljava/util/Map;Ljava/lang/Class;)Lcom/shabakaty/downloader/z90;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/z90;->getConfigurations()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 12
    :goto_0
    invoke-static {v0, v1}, Lzendesk/support/guide/ViewArticleActivity;->builder(J)Lzendesk/support/guide/ArticleConfiguration$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p2, p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->show(Landroid/content/Context;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public parse(Lcom/shabakaty/downloader/qw1;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/qw1;->g:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "help_center_view_article"

    if-lt v0, v1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "articles"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "hc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v4, v0, 0x2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 6
    invoke-static {v2}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->invalid(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/2addr v0, v3

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "-"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    array-length v4, v0

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    .line 10
    invoke-static {v2}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->invalid(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    array-length p1, v0

    if-le p1, v3, :cond_7

    .line 14
    array-length p1, v0

    :goto_2
    if-ge v3, p1, :cond_6

    .line 15
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, ""

    .line 18
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lzendesk/support/guide/ViewArticleActionHandler;->data(JLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 19
    invoke-static {v2, p1}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->valid(Ljava/lang/String;Ljava/util/Map;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1

    .line 20
    :catch_0
    invoke-static {v2}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->invalid(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1

    .line 21
    :cond_8
    :goto_4
    invoke-static {v2}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->invalid(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    :goto_5
    invoke-static {v2}, Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;->invalid(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActionHandler$ActionPayload;

    move-result-object p1

    return-object p1
.end method

.method public updateSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/z92;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
