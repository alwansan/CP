.class public final Landroidx/navigation/f;
.super Ljava/lang/Object;
.source "NavInflater.java"


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/navigation/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/navigation/f;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/navigation/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/navigation/f;->b:Landroidx/navigation/i;

    return-void
.end method

.method public static a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;
    .locals 1

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/c;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v0, Landroidx/navigation/f;->b:Landroidx/navigation/i;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/navigation/i;->d(Ljava/lang/String;)Landroidx/navigation/h;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Landroidx/navigation/h;->a()Landroidx/navigation/c;

    move-result-object v3

    .line 3
    iget-object v4, v0, Landroidx/navigation/f;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroidx/navigation/c;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 5
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_19

    .line 6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_0

    if-eq v6, v8, :cond_19

    :cond_0
    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    goto :goto_0

    :cond_1
    if-le v7, v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "argument"

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "Arguments must have a name"

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    .line 9
    sget-object v6, Lcom/shabakaty/downloader/ql3;->b:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    move/from16 v10, p4

    .line 11
    invoke-virtual {v0, v6, v1, v10}, Landroidx/navigation/f;->d(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/b;

    move-result-object v8

    .line 12
    iget-object v9, v3, Landroidx/navigation/c;->y:Ljava/util/HashMap;

    if-nez v9, :cond_3

    .line 13
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v3, Landroidx/navigation/c;->y:Ljava/util/HashMap;

    .line 14
    :cond_3
    iget-object v9, v3, Landroidx/navigation/c;->y:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    move/from16 v19, v4

    goto/16 :goto_9

    .line 16
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move/from16 v10, p4

    const-string v13, "deepLink"

    .line 17
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 18
    sget-object v6, Lcom/shabakaty/downloader/ql3;->c:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    const-string v11, "${applicationId}"

    const/4 v12, 0x0

    if-eqz v7, :cond_8

    .line 24
    iget-object v13, v0, Landroidx/navigation/f;->a:Landroid/content/Context;

    .line 25
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v12

    .line 27
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 28
    iget-object v13, v0, Landroidx/navigation/f;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_4

    .line 32
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The NavDeepLink cannot have an empty action."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v8, v12

    :goto_4
    if-eqz v9, :cond_b

    .line 33
    iget-object v12, v0, Landroidx/navigation/f;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 35
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 36
    :cond_b
    new-instance v9, Lcom/shabakaty/downloader/yw2;

    invoke-direct {v9, v7, v8, v12}, Lcom/shabakaty/downloader/yw2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v7, v3, Landroidx/navigation/c;->w:Ljava/util/ArrayList;

    if-nez v7, :cond_c

    .line 38
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Landroidx/navigation/c;->w:Ljava/util/ArrayList;

    .line 39
    :cond_c
    iget-object v7, v3, Landroidx/navigation/c;->w:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_d
    const-string v13, "action"

    .line 41
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 42
    sget-object v6, Lcom/shabakaty/downloader/ql3;->a:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 43
    invoke-virtual {v6, v12, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 44
    invoke-virtual {v6, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 45
    new-instance v15, Lcom/shabakaty/downloader/sw2;

    invoke-direct {v15, v14}, Lcom/shabakaty/downloader/sw2;-><init>(I)V

    const/4 v14, 0x4

    .line 46
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    const/4 v14, 0x7

    const/4 v5, -0x1

    .line 47
    invoke-virtual {v6, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    const/16 v14, 0x8

    .line 48
    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 49
    invoke-virtual {v6, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .line 50
    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    const/4 v14, 0x5

    .line 51
    invoke-virtual {v6, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    const/4 v14, 0x6

    .line 52
    invoke-virtual {v6, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .line 53
    new-instance v5, Landroidx/navigation/g;

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v23}, Landroidx/navigation/g;-><init>(ZIZIIII)V

    .line 54
    iput-object v5, v15, Lcom/shabakaty/downloader/sw2;->b:Landroidx/navigation/g;

    .line 55
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 56
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    const/4 v12, 0x1

    add-int/2addr v14, v12

    move/from16 v24, v10

    .line 57
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-eq v9, v12, :cond_14

    .line 58
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-ge v12, v14, :cond_e

    if-eq v9, v8, :cond_14

    :cond_e
    const/4 v8, 0x2

    if-eq v9, v8, :cond_f

    goto :goto_6

    :cond_f
    if-le v12, v14, :cond_10

    :goto_6
    move/from16 v19, v4

    goto :goto_8

    .line 59
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 61
    sget-object v9, Lcom/shabakaty/downloader/ql3;->b:[I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v12, 0x0

    .line 62
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    move/from16 v12, v24

    .line 63
    invoke-virtual {v0, v9, v1, v12}, Landroidx/navigation/f;->d(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/b;

    move-result-object v12

    move/from16 v19, v4

    .line 64
    iget-boolean v4, v12, Landroidx/navigation/b;->c:Z

    if-eqz v4, :cond_11

    if-eqz v4, :cond_11

    .line 65
    iget-object v4, v12, Landroidx/navigation/b;->a:Lcom/shabakaty/downloader/dx2;

    iget-object v12, v12, Landroidx/navigation/b;->d:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8, v12}, Lcom/shabakaty/downloader/dx2;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_11
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    .line 67
    :cond_12
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move/from16 v19, v4

    :goto_7
    move/from16 v24, v10

    :goto_8
    move/from16 v4, v19

    const/4 v8, 0x3

    const/4 v12, 0x1

    goto :goto_5

    :cond_14
    move/from16 v19, v4

    .line 68
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 69
    iput-object v5, v15, Lcom/shabakaty/downloader/sw2;->c:Landroid/os/Bundle;

    .line 70
    :cond_15
    invoke-virtual {v3, v13, v15}, Landroidx/navigation/c;->p(ILcom/shabakaty/downloader/sw2;)V

    .line 71
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    :cond_16
    move/from16 v19, v4

    const-string v4, "include"

    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    instance-of v4, v3, Landroidx/navigation/d;

    if-eqz v4, :cond_17

    .line 73
    sget-object v4, Lcom/shabakaty/downloader/pl3;->c:[I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 75
    move-object v6, v3

    check-cast v6, Landroidx/navigation/d;

    invoke-virtual {v0, v5}, Landroidx/navigation/f;->c(I)Landroidx/navigation/d;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/navigation/d;->q(Landroidx/navigation/c;)V

    .line 76
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    .line 77
    :cond_17
    instance-of v4, v3, Landroidx/navigation/d;

    if-eqz v4, :cond_18

    .line 78
    move-object v4, v3

    check-cast v4, Landroidx/navigation/d;

    invoke-virtual/range {p0 .. p4}, Landroidx/navigation/f;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/c;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/d;->q(Landroidx/navigation/c;)V

    :cond_18
    :goto_9
    move/from16 v4, v19

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_19
    return-object v3
.end method

.method public c(I)Landroidx/navigation/d;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_2

    .line 5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/navigation/f;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/c;

    move-result-object v2

    .line 7
    instance-of v4, v2, Landroidx/navigation/d;

    if-eqz v4, :cond_1

    .line 8
    check-cast v2, Landroidx/navigation/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    .line 10
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root element <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> did not inflate into a NavGraph"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 12
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception inflating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 16
    throw p1
.end method

.method public final d(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/b;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Landroidx/navigation/b$a;

    invoke-direct {v1}, Landroidx/navigation/b$a;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 3
    iput-boolean v4, v1, Landroidx/navigation/b$a;->b:Z

    .line 4
    sget-object v4, Landroidx/navigation/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x2

    .line 7
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "reference"

    const-string v7, "boolean"

    const-string v8, "integer"

    const/4 v9, 0x0

    const-string v10, "float"

    if-eqz v4, :cond_12

    .line 8
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 9
    sget-object v12, Lcom/shabakaty/downloader/dx2;->b:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    sget-object v12, Lcom/shabakaty/downloader/dx2;->d:Lcom/shabakaty/downloader/dx2;

    const-string v13, "integer[]"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    sget-object v12, Lcom/shabakaty/downloader/dx2;->e:Lcom/shabakaty/downloader/dx2;

    const-string v13, "long"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto/16 :goto_3

    .line 12
    :cond_3
    sget-object v12, Lcom/shabakaty/downloader/dx2;->f:Lcom/shabakaty/downloader/dx2;

    const-string v13, "long[]"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_3

    .line 13
    :cond_4
    sget-object v12, Lcom/shabakaty/downloader/dx2;->i:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto/16 :goto_3

    .line 14
    :cond_5
    sget-object v12, Lcom/shabakaty/downloader/dx2;->j:Lcom/shabakaty/downloader/dx2;

    const-string v13, "boolean[]"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto/16 :goto_3

    .line 15
    :cond_6
    sget-object v12, Lcom/shabakaty/downloader/dx2;->k:Lcom/shabakaty/downloader/dx2;

    const-string v13, "string"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto/16 :goto_3

    .line 16
    :cond_7
    sget-object v13, Lcom/shabakaty/downloader/dx2;->l:Lcom/shabakaty/downloader/dx2;

    const-string v14, "string[]"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :goto_0
    move-object v12, v13

    goto/16 :goto_3

    .line 17
    :cond_8
    sget-object v13, Lcom/shabakaty/downloader/dx2;->g:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_0

    .line 18
    :cond_9
    sget-object v13, Lcom/shabakaty/downloader/dx2;->h:Lcom/shabakaty/downloader/dx2;

    const-string v14, "float[]"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_0

    .line 19
    :cond_a
    sget-object v13, Lcom/shabakaty/downloader/dx2;->c:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_0

    .line 20
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_13

    :try_start_0
    const-string v12, "."

    .line 21
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz v11, :cond_c

    .line 22
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_c
    move-object v11, v4

    :goto_1
    const-string v12, "[]"

    .line 23
    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 24
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 26
    const-class v13, Landroid/os/Parcelable;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 27
    new-instance v11, Lcom/shabakaty/downloader/dx2$m;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/dx2$m;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 28
    :cond_d
    const-class v13, Ljava/io/Serializable;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 29
    new-instance v11, Lcom/shabakaty/downloader/dx2$o;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/dx2$o;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 30
    :cond_e
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 31
    const-class v13, Landroid/os/Parcelable;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 32
    new-instance v11, Lcom/shabakaty/downloader/dx2$n;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/dx2$n;-><init>(Ljava/lang/Class;)V

    :goto_2
    move-object v12, v11

    goto :goto_3

    .line 33
    :cond_f
    const-class v13, Ljava/lang/Enum;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 34
    new-instance v11, Lcom/shabakaty/downloader/dx2$l;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/dx2$l;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 35
    :cond_10
    const-class v13, Ljava/io/Serializable;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 36
    new-instance v11, Lcom/shabakaty/downloader/dx2$p;

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/dx2$p;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 37
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not Serializable or Parcelable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    move-object v12, v9

    :cond_13
    :goto_3
    const/4 v11, 0x1

    .line 39
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 40
    sget-object v9, Lcom/shabakaty/downloader/dx2;->c:Lcom/shabakaty/downloader/dx2;

    const-string v13, "\' for "

    const-string v14, "unsupported value \'"

    const/16 v15, 0x10

    if-ne v12, v9, :cond_16

    .line 41
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_14

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_7

    .line 43
    :cond_14
    iget v0, v5, Landroid/util/TypedValue;->type:I

    if-ne v0, v15, :cond_15

    iget v0, v5, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_15

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_7

    .line 45
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v14}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v12}, Lcom/shabakaty/downloader/dx2;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Must be a reference to a resource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_16
    iget v3, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_18

    if-nez v12, :cond_17

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v9

    move-object v9, v0

    goto/16 :goto_7

    .line 49
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v14}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v12}, Lcom/shabakaty/downloader/dx2;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". You must use a \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" type to reference other resources."

    .line 51
    invoke-static {v1, v6, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_18
    sget-object v3, Lcom/shabakaty/downloader/dx2;->k:Lcom/shabakaty/downloader/dx2;

    if-ne v12, v3, :cond_19

    .line 53
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 54
    :cond_19
    iget v0, v5, Landroid/util/TypedValue;->type:I

    if-eq v0, v2, :cond_20

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1c

    if-lt v0, v15, :cond_1b

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1b

    .line 55
    sget-object v0, Lcom/shabakaty/downloader/dx2;->g:Lcom/shabakaty/downloader/dx2;

    if-ne v12, v0, :cond_1a

    .line 56
    invoke-static {v5, v12, v0, v4, v10}, Landroidx/navigation/f;->a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;

    move-result-object v12

    .line 57
    iget v0, v5, Landroid/util/TypedValue;->data:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto/16 :goto_7

    .line 58
    :cond_1a
    sget-object v0, Lcom/shabakaty/downloader/dx2;->b:Lcom/shabakaty/downloader/dx2;

    invoke-static {v5, v12, v0, v4, v8}, Landroidx/navigation/f;->a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;

    move-result-object v12

    .line 59
    iget v0, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_7

    .line 60
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "unsupported argument type "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1c
    sget-object v0, Lcom/shabakaty/downloader/dx2;->i:Lcom/shabakaty/downloader/dx2;

    invoke-static {v5, v12, v0, v4, v7}, Landroidx/navigation/f;->a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;

    move-result-object v12

    .line 62
    iget v0, v5, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_4

    :cond_1d
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_7

    .line 63
    :cond_1e
    sget-object v0, Lcom/shabakaty/downloader/dx2;->b:Lcom/shabakaty/downloader/dx2;

    const-string v2, "dimension"

    invoke-static {v5, v12, v0, v4, v2}, Landroidx/navigation/f;->a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;

    move-result-object v12

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7

    .line 65
    :cond_1f
    sget-object v0, Lcom/shabakaty/downloader/dx2;->g:Lcom/shabakaty/downloader/dx2;

    invoke-static {v5, v12, v0, v4, v10}, Landroidx/navigation/f;->a(Landroid/util/TypedValue;Lcom/shabakaty/downloader/dx2;Lcom/shabakaty/downloader/dx2;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/dx2;

    move-result-object v12

    .line 66
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_7

    .line 67
    :cond_20
    iget-object v0, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_21

    .line 68
    :try_start_1
    sget-object v2, Lcom/shabakaty/downloader/dx2;->b:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/dx2;->c(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v12, v2

    goto :goto_6

    .line 69
    :catch_1
    :try_start_2
    sget-object v2, Lcom/shabakaty/downloader/dx2;->e:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/dx2;->c(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 70
    :catch_2
    :try_start_3
    sget-object v2, Lcom/shabakaty/downloader/dx2;->g:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/dx2;->c(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 71
    :catch_3
    :try_start_4
    sget-object v2, Lcom/shabakaty/downloader/dx2;->i:Lcom/shabakaty/downloader/dx2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/dx2;->c(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 72
    :catch_4
    sget-object v2, Lcom/shabakaty/downloader/dx2;->k:Lcom/shabakaty/downloader/dx2;

    goto :goto_5

    .line 73
    :cond_21
    :goto_6
    invoke-virtual {v12, v0}, Lcom/shabakaty/downloader/dx2;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :cond_22
    :goto_7
    if-eqz v9, :cond_23

    .line 74
    iput-object v9, v1, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    .line 75
    iput-boolean v11, v1, Landroidx/navigation/b$a;->d:Z

    :cond_23
    if-eqz v12, :cond_24

    .line 76
    iput-object v12, v1, Landroidx/navigation/b$a;->a:Lcom/shabakaty/downloader/dx2;

    .line 77
    :cond_24
    invoke-virtual {v1}, Landroidx/navigation/b$a;->a()Landroidx/navigation/b;

    move-result-object v0

    return-object v0
.end method
