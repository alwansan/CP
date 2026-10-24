.class public final Lcom/shabakaty/downloader/xv$a;
.super Ljava/lang/Object;
.source "CaptureStage.java"

# interfaces
.implements Lcom/shabakaty/downloader/xv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v1

    const/4 v5, -0x1

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/ew2;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/pv;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    iget-object v8, v2, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 11
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v8, Lcom/shabakaty/downloader/lk4;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/lk4;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    .line 14
    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/pv;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V

    return-void
.end method
