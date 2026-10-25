.class public final Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;
.super Ljava/lang/Object;
.source "SequentialSubtitleSyncHelper.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "sequential_subtitle_sync_tenths"

.field private static final MAX_TENTHS:I = 0xd2f00

.field private static final PREFS:Ljava/lang/String; = "cinemana_mod_prefs"

.field private static volatile autoEnabled:Z

.field private static volatile sequentialOffsetUs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->commitText(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addFullWidth(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, p2, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    invoke-virtual {p3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 196
    new-array v0, p2, [Ljava/lang/Class;

    aput-object p4, v0, v2

    aput-object p5, v0, v3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object p3, p2, v3

    const-string p1, "addView"

    invoke-static {p0, p1, v0, p2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method private static addWrap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object v0, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 202
    new-array v0, p2, [Ljava/lang/Class;

    aput-object p4, v0, v2

    aput-object p5, v0, v3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object p3, p2, v3

    const-string p1, "addView"

    invoke-static {p0, p1, v0, p2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public static adjustPositionUs(J)J
    .locals 3

    .line 50
    invoke-static {}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getOffsetUs()J

    move-result-wide v0

    sub-long/2addr p0, v0

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method

.method private static bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    const-string v0, "android.view.View$OnClickListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v5, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;

    invoke-direct {v5, p1, p2, p3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 175
    new-array p2, v2, [Ljava/lang/Class;

    aput-object v0, p2, v4

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v4

    const-string p1, "setOnClickListener"

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    if-eqz p0, :cond_1

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 233
    :cond_0
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "target for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static clampTenths(I)I
    .locals 1

    .line 219
    const v0, 0xd2f00

    if-le p0, v0, :cond_0

    return v0

    .line 220
    :cond_0
    const v0, -0xd2f00

    if-ge p0, v0, :cond_1

    return v0

    .line 221
    :cond_1
    return p0
.end method

.method private static commitText(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 180
    const-string v0, ""

    const-string v1, "setText"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "getText"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 181
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 183
    const/high16 v4, 0x41200000    # 10.0f

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->clampTenths(I)I

    move-result v0

    .line 184
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->saveSequential(Ljava/lang/Object;I)V

    .line 185
    new-array p0, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, p0, v3

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {p1, v1, p0, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_1

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    :try_start_1
    new-array v0, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v3

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getSequentialTenths()I

    move-result v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 188
    :catchall_1
    move-exception p1

    :goto_0
    nop

    .line 189
    const-string p1, "Invalid sequential sync value"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :goto_1
    return-void
.end method

.method private static formatTenths(I)Ljava/lang/String;
    .locals 2

    .line 225
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_0

    const-string p0, "-"

    goto :goto_0

    :cond_0
    const-string p0, "+"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    div-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOffsetUs()J
    .locals 4

    .line 41
    nop

    .line 43
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.mod.SubtitleSyncHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    const-string v1, "getOffsetUs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Could not read original player sync offset"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 46
    :goto_0
    sget-boolean v2, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->autoEnabled:Z

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->sequentialOffsetUs:J

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static getSequentialTenths()I
    .locals 4

    .line 59
    sget-wide v0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->sequentialOffsetUs:J

    const-wide/32 v2, 0x186a0

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 8

    .line 21
    if-nez p0, :cond_0

    return-void

    .line 23
    :cond_0
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.player.CinemanaPlayerControllerView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v1, "com.shabakaty.cinemana.mod.SubtitleSyncHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "init"

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 27
    :try_start_2
    const-string v0, "getContext"

    new-array v1, v3, [Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    return-void

    .line 29
    :cond_1
    const-string v0, "getSharedPreferences"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "cinemana_mod_prefs"

    aput-object v7, v6, v3

    aput-object v5, v6, v2

    .line 29
    invoke-static {p0, v0, v4, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 31
    const-string v0, "getInt"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "sequential_subtitle_sync_tenths"

    aput-object v6, v1, v3

    aput-object v5, v1, v2

    .line 31
    invoke-static {p0, v0, v4, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 33
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setOffsetTenths(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    goto :goto_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    const-string v0, "Could not initialize sequential subtitle sync"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :goto_1
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 238
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 239
    const-string v1, "e"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/Throwable;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "CinemanaSeqSync"

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    aput-object p1, v1, v7

    .line 240
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 242
    return-void
.end method

.method public static saveSequential(Ljava/lang/Object;I)V
    .locals 8

    .line 63
    if-nez p0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->clampTenths(I)I

    move-result p1

    .line 65
    invoke-static {p1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setOffsetTenths(I)V

    .line 67
    :try_start_0
    const-string v0, "getSharedPreferences"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "cinemana_mod_prefs"

    aput-object v7, v6, v4

    aput-object v3, v6, v5

    .line 67
    invoke-static {p0, v0, v2, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 69
    const-string v0, "edit"

    new-array v2, v4, [Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 70
    const-string v0, "putInt"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "sequential_subtitle_sync_tenths"

    aput-object v3, v1, v4

    aput-object p1, v1, v5

    invoke-static {p0, v0, v2, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p1, "apply"

    new-array v0, v4, [Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Could not save sequential subtitle sync"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    return-void
.end method

.method public static setAutoEnabled(Z)V
    .locals 0

    .line 55
    sput-boolean p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->autoEnabled:Z

    .line 56
    return-void
.end method

.method private static setOffsetTenths(I)V
    .locals 4

    .line 215
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->clampTenths(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x186a0

    mul-long v0, v0, v2

    sput-wide v0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->sequentialOffsetUs:J

    .line 216
    return-void
.end method

.method private static setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 207
    :try_start_0
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    const-string v1, "com.shabakaty.cinemana.ca1.ThemeEngine142"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 210
    const-string p2, "setTextColor"

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 212
    return-void
.end method

.method private static addHalfSecondButtons(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p0, Landroid/content/Context;

    check-cast p1, Landroid/widget/LinearLayout;

    check-cast p2, Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u2212 0.5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 v1, -0x5

    invoke-static {v0, p0, p2, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "+ 0.5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 v1, 0x5

    invoke-static {v0, p0, p2, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method private static addZeroButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p0, Landroid/content/Context;

    check-cast p1, Landroid/widget/LinearLayout;

    check-cast p2, Landroid/widget/EditText;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7fffffff

    invoke-static {v1, p0, p2, v2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static showSequentialDialog(Ljava/lang/Object;)V
    .locals 32

    .line 76
    move-object/from16 v0, p0

    const-string v1, "show"

    const-string v2, "inkMuted"

    const-string v3, "setTextSize"

    const-string v4, "setOrientation"

    const-string v5, "ink"

    const-string v6, "setPadding"

    const-string v7, "setGravity"

    const-string v8, "setText"

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->init(Ljava/lang/Object;)V

    .line 79
    const-string v9, "getContext"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v11, v12}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 80
    if-nez v9, :cond_1

    return-void

    .line 81
    :cond_1
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 82
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 83
    const-string v0, "android.widget.LinearLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 84
    const-string v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 85
    const-string v0, "android.widget.EditText"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    const-string v12, "android.widget.Button"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 87
    const-string v12, "android.widget.LinearLayout$LayoutParams"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 88
    const-string v16, "android.view.ViewGroup$LayoutParams"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 89
    const/4 v10, 0x1

    move-object/from16 p0, v12

    new-array v12, v10, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v11, v12, v16

    invoke-virtual {v15, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    move-object/from16 v17, v13

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v16

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 90
    new-array v12, v10, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v16, v12, v20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v21, v1

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v16, v1, v20

    invoke-static {v13, v4, v12, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v1, 0x4

    new-array v12, v1, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v16, v12, v20

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v12, v10

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v16, v12, v10

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x3

    aput-object v16, v12, v23

    .line 92
    const/16 v16, 0x20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x14

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v27, 0xc

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    new-array v10, v1, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v24, v10, v20

    const/4 v1, 0x1

    aput-object v26, v10, v1

    const/16 v22, 0x2

    aput-object v16, v10, v22

    aput-object v28, v10, v23

    .line 91
    invoke-static {v13, v6, v12, v10}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-array v10, v1, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v14, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    move-object/from16 v16, v14

    new-array v14, v1, [Ljava/lang/Object;

    aput-object v9, v14, v12

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 95
    new-array v12, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aput-object v1, v12, v14

    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/Object;

    const-string v1, "\u0627\u0644\u0645\u0648\u062c\u0628 \u064a\u0624\u062e\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629\u060c \u0648\u0627\u0644\u0633\u0627\u0644\u0628 \u064a\u0642\u062f\u0645\u0647\u0627"

    const/16 v20, 0x0

    aput-object v1, v14, v20

    invoke-static {v10, v8, v12, v14}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v12, v14

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v28, v8

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v20, v8, v14

    invoke-static {v10, v7, v12, v8}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-array v8, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v8, v12

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v29, v5

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v12

    invoke-static {v10, v3, v8, v5}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v10, v9, v2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v1, v5, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v1, v5, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v1, v5, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v23

    .line 100
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v25, v2

    move-object/from16 v30, v3

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object v8, v3, v1

    const/4 v1, 0x2

    aput-object v12, v3, v1

    aput-object v14, v3, v23

    .line 99
    invoke-static {v10, v6, v5, v3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v1, p0

    move-object v12, v13

    move-object v3, v13

    move-object/from16 v2, v17

    move-object v13, v10

    move-object/from16 v5, v16

    move-object v14, v15

    move-object v8, v15

    move-object v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addFullWidth(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 103
    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v9, v14, v13

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 104
    new-array v12, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v31, v6

    const/4 v14, 0x1

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v10, v6, v13

    invoke-static {v15, v4, v12, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-array v4, v14, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v6, v4, v10

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v12, v13, v10

    invoke-static {v15, v7, v4, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-array v4, v6, [Ljava/lang/Class;

    aput-object v11, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v9, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v6, v0, v10

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v12, v13, v10

    invoke-static {v4, v7, v0, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "setInputType"

    new-array v10, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v6, v10, v12

    const/16 v6, 0x3002

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v6, v14, v12

    invoke-static {v4, v0, v10, v14}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "setSelectAllOnFocus"

    new-array v6, v13, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v10, v6, v12

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v13, v12

    invoke-static {v4, v0, v6, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v6, v29

    invoke-static {v4, v9, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v10, v0, v12

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getSequentialTenths()I

    move-result v10

    invoke-static {v10}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v13, v12

    move-object/from16 v10, v28

    invoke-static {v4, v10, v0, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v12, v0, v13

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, -0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v28, v7

    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v13, v7, v12

    const/4 v12, 0x1

    aput-object v14, v7, v12

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 113
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v12, "weight"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v12}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 114
    :goto_0
    :try_start_2
    const-string v0, "setMargins"

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v12, v13, v14

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v12, v13, v14

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v13, v23

    .line 115
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v29, v5

    const/4 v14, 0x4

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v5, v14

    const/4 v12, 0x1

    aput-object v16, v5, v12

    const/4 v12, 0x2

    aput-object v17, v5, v12

    aput-object v27, v5, v23

    .line 114
    invoke-static {v7, v0, v13, v5}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "setMarginStart"

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 p0, v3

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v14, v3, v13

    invoke-static {v7, v0, v12, v3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-array v0, v5, [Ljava/lang/Class;

    aput-object v11, v0, v13

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v9, v3, v13

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    new-array v3, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v5, v3, v12

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/Object;

    const-string v5, "\u2212 0.1s"

    aput-object v5, v13, v12

    invoke-static {v0, v10, v3, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v0, v9, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v9, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v3, v5, v12

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    const-string v3, "+ 0.1s"

    aput-object v3, v13, v12

    invoke-static {v2, v10, v5, v13}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v2, v9, v6}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    move-object v12, v15

    move-object v13, v0

    move-object v14, v8

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addWrap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 126
    const-string v5, "addView"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v18, v12, v6

    const/4 v6, 0x1

    aput-object v19, v12, v6

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v14, v13

    aput-object v7, v14, v6

    invoke-static {v3, v5, v12, v14}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-object v12, v3

    move-object v13, v2

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addWrap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 128
    move-object/from16 v12, p0

    move-object v13, v3

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addFullWidth(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 130
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v7, v29

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v9, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 131
    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const-string v3, "\u064a\u064f\u062d\u0641\u0638 \u0647\u0630\u0627 \u0627\u0644\u062a\u0648\u0642\u064a\u062a \u0644\u0643\u0644 \u0645\u0644\u0641\u0627\u062a \u0627\u0644\u0645\u062c\u0644\u062f \u0627\u0644\u062a\u064a \u062a\u064f\u062d\u0645\u0651\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627"

    aput-object v3, v7, v6

    invoke-static {v13, v10, v5, v7}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v6

    move-object/from16 v3, v28

    invoke-static {v13, v3, v5, v10}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-array v3, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    move-object/from16 v5, v30

    invoke-static {v13, v5, v3, v10}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-object/from16 v3, v25

    invoke-static {v13, v9, v3}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->setThemeColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v23

    .line 136
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    const/4 v6, 0x1

    aput-object v7, v12, v6

    const/4 v6, 0x2

    aput-object v10, v12, v6

    aput-object v3, v12, v23

    .line 135
    move-object/from16 v3, v31

    invoke-static {v13, v3, v5, v12}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-object/from16 v12, p0

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addFullWidth(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    # Keep the active row register: v3 was reused for the "setPadding" method name above.
    invoke-static {v9, v12, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addZeroButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-static {v9, v13, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->addHalfSecondButtons(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-static {v0, v9, v4, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    const/4 v1, 0x1

    invoke-static {v2, v9, v4, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->bindStep(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    const-string v0, "android.app.AlertDialog$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v9, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    const-string v3, "setTitle"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const-string v1, "\u0645\u0632\u0627\u0645\u0646\u0629 \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    aput-object v1, v7, v6

    invoke-static {v2, v3, v5, v7}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "setView"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p0, v7, v6

    invoke-static {v2, v1, v5, v7}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "android.content.DialogInterface$OnClickListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v6, v5

    new-instance v5, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;

    invoke-direct {v5, v9, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    const-string v4, "setPositiveButton"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const-string v5, "\u062a\u0645"

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v3, v7, v5

    invoke-static {v2, v4, v6, v7}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v3, "setNegativeButton"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v6, 0x0

    aput-object v4, v1, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-object v4, v1, v6

    invoke-static {v2, v3, v5, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 156
    :try_start_3
    const-string v1, "com.shabakaty.cinemana.ca1.Ui7"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 157
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v7, v21

    :try_start_4
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 158
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v7, v21

    :goto_1
    const/4 v1, 0x0

    :try_start_5
    new-array v0, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v7, v0, v1}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_2
    nop

    .line 159
    goto :goto_3

    :catchall_3
    move-exception v0

    const-string v1, "Could not show sequential subtitle sync dialog"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :goto_3
    return-void
.end method
