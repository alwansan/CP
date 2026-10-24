.class public Lcom/shabakaty/downloader/ap4;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/onesignal/l1;


# direct methods
.method public constructor <init>(Lcom/onesignal/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/onesignal/l1;->h:Z

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, v0, Lcom/onesignal/l1;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v3, :cond_2

    .line 4
    sget-object v3, Lcom/onesignal/l1;->j:Ljava/lang/Class;

    .line 5
    const-class v8, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v3, v10

    .line 6
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 7
    array-length v13, v12

    if-ne v13, v5, :cond_0

    aget-object v13, v12, v2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_0

    aget-object v13, v12, v1

    if-ne v13, v8, :cond_0

    aget-object v13, v12, v4

    if-ne v13, v8, :cond_0

    aget-object v12, v12, v7

    if-ne v12, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object v11, v6

    .line 8
    :goto_1
    iput-object v11, v0, Lcom/onesignal/l1;->c:Ljava/lang/reflect/Method;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 10
    iget-object v0, v0, Lcom/onesignal/l1;->c:Ljava/lang/reflect/Method;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 13
    iget-object v3, v0, Lcom/onesignal/l1;->c:Ljava/lang/reflect/Method;

    .line 14
    iget-object v0, v0, Lcom/onesignal/l1;->b:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    iget-object v8, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 16
    iget-object v8, v8, Lcom/onesignal/l1;->e:Landroid/content/Context;

    .line 17
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    const-string v1, "inapp"

    aput-object v1, v5, v4

    aput-object v6, v5, v7

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "RESPONSE_CODE"

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 21
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 22
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x0

    .line 23
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 26
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "purchaseToken"

    .line 27
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    iget-object v8, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 29
    iget-object v8, v8, Lcom/onesignal/l1;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 31
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 33
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    invoke-static {v0, v1, v3}, Lcom/onesignal/l1;->a(Lcom/onesignal/l1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 35
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 37
    iput-boolean v2, v0, Lcom/onesignal/l1;->g:Z

    const-string v0, "GTPlayerPurchases"

    const-string v1, "ExistingPurchases"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ap4;->r:Lcom/onesignal/l1;

    .line 41
    iput-boolean v2, v0, Lcom/onesignal/l1;->h:Z

    return-void
.end method
