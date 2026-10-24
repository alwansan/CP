.class public final Lcom/shabakaty/downloader/ls;
.super Ljava/lang/Object;
.source "Camera2UseCaseConfigFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/ix4;


# static fields
.field public static final b:Landroid/util/Size;


# instance fields
.field public final a:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/shabakaty/downloader/ls;->b:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/shabakaty/downloader/ls;->a:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ix4$a;)Lcom/shabakaty/downloader/o90;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v3

    .line 2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v5, Lcom/shabakaty/downloader/pv$a;

    invoke-direct {v5}, Lcom/shabakaty/downloader/pv$a;-><init>()V

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    .line 8
    iput v6, v5, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 9
    sget-object v13, Lcom/shabakaty/downloader/ix4$a;->s:Lcom/shabakaty/downloader/ix4$a;

    const/4 v6, 0x2

    if-ne v1, v13, :cond_1

    .line 10
    const-class v7, Lcom/shabakaty/downloader/lf3;

    invoke-static {v7}, Lcom/shabakaty/downloader/ts0;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/lf3;

    if-nez v7, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v7

    .line 12
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 14
    sget-object v14, Lcom/shabakaty/downloader/js;->s:Lcom/shabakaty/downloader/o90$a;

    const-string v14, "camera2.captureRequest.option."

    .line 15
    invoke-static {v14}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-class v15, Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/fg;

    invoke-direct {v0, v14, v15, v12}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v7, v0, v2, v6}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/js;

    invoke-static {v7}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/shabakaty/downloader/js;-><init>(Lcom/shabakaty/downloader/o90;)V

    .line 19
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/hx4;->k:Lcom/shabakaty/downloader/o90$a;

    .line 21
    new-instance v14, Lcom/shabakaty/downloader/u14;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/pv$a;->d()Lcom/shabakaty/downloader/pv;

    move-result-object v12

    move-object v6, v14

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/u14;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/pv;)V

    .line 23
    invoke-virtual {v3, v0, v2, v14}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/hx4;->m:Lcom/shabakaty/downloader/o90$a;

    sget-object v4, Lcom/shabakaty/downloader/ks;->a:Lcom/shabakaty/downloader/ks;

    .line 25
    invoke-virtual {v3, v0, v2, v4}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v4

    .line 28
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 29
    new-instance v5, Lcom/shabakaty/downloader/ew2;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_3

    const/4 v11, 0x3

    if-eq v7, v11, :cond_3

    const/4 v7, -0x1

    const/4 v8, -0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x2

    .line 31
    :cond_3
    :goto_1
    sget-object v12, Lcom/shabakaty/downloader/hx4;->l:Lcom/shabakaty/downloader/o90$a;

    .line 32
    new-instance v14, Lcom/shabakaty/downloader/pv;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-static {v4}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v0

    .line 34
    sget-object v4, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 35
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 37
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 38
    invoke-virtual {v5, v11}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 39
    :cond_4
    new-instance v11, Lcom/shabakaty/downloader/lk4;

    invoke-direct {v11, v4}, Lcom/shabakaty/downloader/lk4;-><init>(Ljava/util/Map;)V

    move-object v5, v14

    move-object v6, v7

    move-object v7, v0

    .line 40
    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/pv;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V

    .line 41
    invoke-virtual {v3, v12, v2, v14}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/shabakaty/downloader/hx4;->n:Lcom/shabakaty/downloader/o90$a;

    .line 43
    sget-object v4, Lcom/shabakaty/downloader/ix4$a;->r:Lcom/shabakaty/downloader/ix4$a;

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/shabakaty/downloader/py1;->b:Lcom/shabakaty/downloader/py1;

    goto :goto_3

    .line 44
    :cond_5
    sget-object v4, Lcom/shabakaty/downloader/cs;->a:Lcom/shabakaty/downloader/cs;

    .line 45
    :goto_3
    invoke-virtual {v3, v0, v2, v4}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    if-ne v1, v13, :cond_8

    .line 46
    sget-object v0, Lcom/shabakaty/downloader/dz1;->f:Lcom/shabakaty/downloader/o90$a;

    .line 47
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v4, p0

    .line 48
    iget-object v5, v4, Lcom/shabakaty/downloader/ls;->a:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 49
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_6

    .line 50
    new-instance v5, Landroid/util/Size;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_4

    .line 51
    :cond_6
    new-instance v5, Landroid/util/Size;

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v5, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 52
    :goto_4
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int v6, v6, v1

    sget-object v1, Lcom/shabakaty/downloader/ls;->b:Landroid/util/Size;

    .line 53
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int v8, v8, v7

    if-le v6, v8, :cond_7

    move-object v5, v1

    .line 54
    :cond_7
    invoke-virtual {v3, v0, v2, v5}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move-object/from16 v4, p0

    .line 55
    :goto_5
    iget-object v0, v4, Lcom/shabakaty/downloader/ls;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 56
    sget-object v1, Lcom/shabakaty/downloader/dz1;->c:Lcom/shabakaty/downloader/o90$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    invoke-virtual {v3, v1, v2, v0}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 58
    invoke-static {v3}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v0

    return-object v0
.end method
