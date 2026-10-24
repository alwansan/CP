.class public final Lcom/cinemana/pro/logo/TmdbSettings;
.super Ljava/lang/Object;
.source "TmdbSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cinemana/pro/logo/TmdbSettings$Action;
    }
.end annotation


# static fields
.field private static final API_LINK:Ljava/lang/String; = "https://www.themoviedb.org/settings/api"

.field private static final TAG:Ljava/lang/String; = "cinemana_tmdb_api_setting"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/cinemana/pro/logo/TmdbSettings;->openApiLink(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/TmdbSettings;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 139
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "w"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "CinemanaTMDB"

    const/4 v3, 0x0

    aput-object v2, p1, v3

    const/4 v2, 0x1

    aput-object p0, p1, v2

    invoke-static {v0, v1, p1}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 141
    return-void
.end method

.method private static dialogAction(Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    const-string v0, "android.content.DialogInterface$OnClickListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 120
    const-class v1, Lcom/cinemana/pro/logo/TmdbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/cinemana/pro/logo/TmdbSettings$6;

    invoke-direct {v0, p0}, Lcom/cinemana/pro/logo/TmdbSettings$6;-><init>(Lcom/cinemana/pro/logo/TmdbSettings$Action;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static inspect(Ljava/lang/Object;)V
    .locals 0

    .line 15
    return-void
.end method

.method private static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 153
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_b

    aget-object v6, v2, v5

    .line 154
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v8, p2

    if-eq v7, v8, :cond_1

    goto :goto_6

    .line 155
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 156
    move v8, v4

    :goto_2
    array-length v9, p2

    if-ge v8, v9, :cond_8

    .line 157
    aget-object v9, p2, v8

    if-nez v9, :cond_2

    goto :goto_4

    .line 158
    :cond_2
    aget-object v9, v7, v8

    .line 159
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_3

    const-class v9, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_4

    const-class v9, Ljava/lang/Float;

    goto :goto_3

    :cond_4
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_5

    const-class v9, Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_6

    const-class v9, Ljava/lang/Long;

    .line 160
    :cond_6
    :goto_3
    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_7

    move v7, v4

    goto :goto_5

    .line 156
    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v7, 0x1

    .line 162
    :goto_5
    if-eqz v7, :cond_a

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    invoke-virtual {v6, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 153
    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 164
    :cond_b
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static linear(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const-string v0, "android.widget.LinearLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    const-string v3, "android.content.Context"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "setOrientation"

    invoke-static {p0, p1, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static listener(Ljava/lang/String;Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 29
    const-class v0, Lcom/cinemana/pro/logo/TmdbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lcom/cinemana/pro/logo/TmdbSettings$1;

    invoke-direct {p0, p1}, Lcom/cinemana/pro/logo/TmdbSettings$1;-><init>(Lcom/cinemana/pro/logo/TmdbSettings$Action;)V

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static openApiLink(Ljava/lang/Object;)V
    .locals 9

    .line 131
    const-string v0, "https://www.themoviedb.org/settings/api"

    :try_start_0
    const-string v1, "android.net.Uri"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    const-string v2, "parse"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    const-string v4, "android.content.Intent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    aput-object v1, v7, v3

    .line 134
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    const-string v6, "android.intent.action.VIEW"

    aput-object v6, v4, v5

    aput-object v2, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    const-string v2, "startActivity"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {p0, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void
.end method

.method public static openDialog(Ljava/lang/Object;)V
    .locals 17

    .line 42
    move-object/from16 v1, p0

    const-string v0, "addView"

    const-string v2, "setPadding"

    const-string v3, "android.content.Context"

    const-string v4, "setTextColor"

    :try_start_0
    const-string v5, "ar"

    invoke-static/range {p0 .. p0}, Lcom/cinemana/pro/logo/TmdbLogo;->appLanguageForActivity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 43
    const-string v6, "android.widget.EditText"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    .line 44
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    const-string v8, "setSingleLine"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v9, v11, v10

    invoke-static {v6, v8, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v8, "setInputType"

    const/16 v9, 0x81

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v9, v11, v10

    invoke-static {v6, v8, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v9, v11, v10

    invoke-static {v6, v4, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v9, "setHintTextColor"

    const v11, -0x444445

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v11, v12, v10

    invoke-static {v6, v9, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v9, "setHint"

    new-array v11, v7, [Ljava/lang/Object;

    const-string v12, "TMDB API Key"

    aput-object v12, v11, v10

    invoke-static {v6, v9, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/cinemana/pro/logo/TmdbLogo;->readKey()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v12, "setText"

    if-nez v11, :cond_0

    :try_start_1
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v9, v11, v10

    invoke-static {v6, v12, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    const-string v9, "android.text.TextWatcher"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 54
    const-class v11, Lcom/cinemana/pro/logo/TmdbSettings;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    new-array v13, v7, [Ljava/lang/Class;

    aput-object v9, v13, v10

    new-instance v9, Lcom/cinemana/pro/logo/TmdbSettings$2;

    invoke-direct {v9}, Lcom/cinemana/pro/logo/TmdbSettings$2;-><init>()V

    invoke-static {v11, v13, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 65
    const-string v11, "addTextChangedListener"

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v9, v13, v10

    invoke-static {v6, v11, v13}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v1, v7}, Lcom/cinemana/pro/logo/TmdbSettings;->linear(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 67
    const/16 v11, 0x18

    invoke-static {v1, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xa

    invoke-static {v1, v14}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v1, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v15, 0x4

    invoke-static {v1, v15}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-array v8, v15, [Ljava/lang/Object;

    aput-object v13, v8, v10

    aput-object v14, v8, v7

    const/4 v13, 0x2

    aput-object v11, v8, v13

    const/4 v11, 0x3

    aput-object v16, v8, v11

    invoke-static {v9, v2, v8}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v9, v0, v8}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static/range {p0 .. p0}, Lcom/cinemana/pro/logo/TmdbSettings;->textView(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 70
    if-eqz v5, :cond_1

    const-string v14, "\u0627\u0644\u062d\u0635\u0648\u0644 \u0639\u0644\u0649 \u0645\u0641\u062a\u0627\u062d TMDB API \u2197"

    goto :goto_0

    :cond_1
    const-string v14, "Get TMDB API Key \u2197"

    :goto_0
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v14, v11, v10

    invoke-static {v8, v12, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v12, v11, v10

    invoke-static {v8, v4, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v11, "setTextSize"

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v12, v14, v10

    invoke-static {v8, v11, v14}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v1, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v13, 0xc

    invoke-static {v1, v13}, Lcom/cinemana/pro/logo/TmdbSettings;->px(Ljava/lang/Object;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v10

    aput-object v12, v15, v7

    const/4 v11, 0x2

    aput-object v14, v15, v11

    const/4 v11, 0x3

    aput-object v13, v15, v11

    invoke-static {v8, v2, v15}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "getPaintFlags"

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8, v2, v11}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 75
    const-string v11, "setPaintFlags"

    or-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v2, v12, v10

    invoke-static {v8, v11, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "setClickable"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v11, v12, v10

    invoke-static {v8, v2, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "setOnClickListener"

    const-string v11, "android.view.View$OnClickListener"

    new-instance v12, Lcom/cinemana/pro/logo/TmdbSettings$3;

    invoke-direct {v12, v1}, Lcom/cinemana/pro/logo/TmdbSettings$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v11, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->listener(Ljava/lang/String;Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v11, v12, v10

    invoke-static {v8, v2, v12}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v8, v2, v10

    invoke-static {v9, v0, v2}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 81
    :try_start_2
    const-string v0, "androidx.appcompat.app.AlertDialog$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Class;

    .line 82
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_3
    const-string v0, "android.app.AlertDialog$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Class;

    .line 85
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    :goto_1
    const-string v2, "setTitle"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v8, "TMDB API"

    aput-object v8, v3, v10

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "setMessage"

    if-eqz v5, :cond_2

    .line 89
    const-string v3, "\u0623\u0644\u0635\u0642 \u0645\u0641\u062a\u0627\u062d API. \u062a\u062a\u0628\u0639 \u0627\u0644\u0634\u0639\u0627\u0631\u0627\u062a \u0644\u063a\u0629 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0648\u064a\u064f\u0633\u062a\u062e\u062f\u0645 Cinemeta \u0625\u0630\u0627 \u0644\u0645 \u064a\u062a\u0648\u0641\u0631 \u0634\u0639\u0627\u0631 \u0641\u064a TMDB."

    goto :goto_2

    .line 90
    :cond_2
    const-string v3, "Paste your API key. Logos follow the app language; Cinemeta is used if TMDB has no logo."

    :goto_2
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v10

    .line 88
    invoke-static {v0, v2, v8}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "setView"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v9, v3, v10

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v2, "setPositiveButton"

    if-eqz v5, :cond_3

    const-string v3, "\u062d\u0641\u0638"

    goto :goto_3

    :cond_3
    const-string v3, "Save"

    :goto_3
    new-instance v8, Lcom/cinemana/pro/logo/TmdbSettings$4;

    invoke-direct {v8, v6, v1, v5}, Lcom/cinemana/pro/logo/TmdbSettings$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-static {v8}, Lcom/cinemana/pro/logo/TmdbSettings;->dialogAction(Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v10

    aput-object v6, v9, v7

    invoke-static {v0, v2, v9}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "setNeutralButton"

    if-eqz v5, :cond_4

    const-string v3, "\u062a\u0639\u0637\u064a\u0644 TMDB"

    goto :goto_4

    :cond_4
    const-string v3, "Disable TMDB"

    :goto_4
    new-instance v6, Lcom/cinemana/pro/logo/TmdbSettings$5;

    invoke-direct {v6, v1, v5}, Lcom/cinemana/pro/logo/TmdbSettings$5;-><init>(Ljava/lang/Object;Z)V

    invoke-static {v6}, Lcom/cinemana/pro/logo/TmdbSettings;->dialogAction(Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v10

    aput-object v6, v9, v7

    invoke-static {v0, v2, v9}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "setNegativeButton"

    if-eqz v5, :cond_5

    const-string v3, "\u0625\u0644\u063a\u0627\u0621"

    goto :goto_5

    :cond_5
    const-string v3, "Cancel"

    :goto_5
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    const/4 v3, 0x0

    aput-object v3, v5, v7

    invoke-static {v0, v2, v5}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "create"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    const-string v0, "show"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v0, -0x3

    const/4 v3, -0x2

    const/4 v5, -0x1

    filled-new-array {v5, v3, v0}, [I

    move-result-object v3

    move v5, v10

    :goto_6
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7

    aget v0, v3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 108
    :try_start_4
    const-string v8, "getButton"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v2, v8, v9}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_6

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v9, v8, v10

    invoke-static {v0, v4, v8}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 110
    :catchall_1
    move-exception v0

    :cond_6
    :goto_7
    nop

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 113
    :cond_7
    :try_start_5
    const-string v0, "findViewById"

    const v1, 0x102000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-static {v2, v0, v3}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_8

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v10

    invoke-static {v0, v4, v2}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    .line 115
    :catchall_2
    move-exception v0

    :cond_8
    :goto_8
    nop

    .line 116
    goto :goto_9

    :catchall_3
    move-exception v0

    const-string v2, "TMDB settings dialog"

    invoke-static {v2, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Could not open TMDB API"

    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    :goto_9
    return-void
.end method

.method private static px(Ljava/lang/Object;I)I
    .locals 3

    .line 147
    :try_start_0
    const-string v0, "getResources"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getDisplayMetrics"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 148
    int-to-float v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "density"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 149
    :catchall_0
    move-exception p0

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private static showToast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 143
    :try_start_0
    const-string v0, "android.widget.Toast"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "makeText"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    const/4 p0, 0x1

    aput-object p1, v4, p0

    const/4 p0, 0x2

    aput-object v3, v4, p0

    invoke-static {v0, v1, v4}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "show"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 145
    return-void
.end method

.method private static textView(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const-string v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 24
    const-string v3, "android.content.Context"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    return-object p0
.end method
