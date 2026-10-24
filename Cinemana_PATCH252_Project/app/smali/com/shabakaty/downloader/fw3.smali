.class public final synthetic Lcom/shabakaty/downloader/fw3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/wc0;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/ze3;
.implements Lcom/shabakaty/downloader/gh2$a;
.implements Lcom/shabakaty/downloader/gg0$a;
.implements Lcom/shabakaty/downloader/ye3;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/fw3;

.field public static final synthetic t:Lcom/shabakaty/downloader/fw3;

.field public static final synthetic u:Lcom/shabakaty/downloader/fw3;

.field public static final synthetic v:Lcom/shabakaty/downloader/fw3;

.field public static final synthetic w:Lcom/shabakaty/downloader/fw3;

.field public static final synthetic x:Lcom/shabakaty/downloader/fw3;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->s:Lcom/shabakaty/downloader/fw3;

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->t:Lcom/shabakaty/downloader/fw3;

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->u:Lcom/shabakaty/downloader/fw3;

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->v:Lcom/shabakaty/downloader/fw3;

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->w:Lcom/shabakaty/downloader/fw3;

    new-instance v0, Lcom/shabakaty/downloader/fw3;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/fw3;->x:Lcom/shabakaty/downloader/fw3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/fw3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()[Lcom/shabakaty/downloader/n91;
    .locals 1

    invoke-static {}, Lcom/shabakaty/downloader/r91;->b()[Lcom/shabakaty/downloader/n91;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/shabakaty/usermanagement/utils/LoginState;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->a()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ej4;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ej4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroid/text/style/RelativeSizeSpan;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/gg0;->a:Lcom/shabakaty/downloader/ml0;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "contents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "Null contents"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Null filename"

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_3

    const-string p1, " filename"

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    if-nez v2, :cond_4

    const-string v3, " contents"

    .line 11
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/lg;

    invoke-direct {p1, v1, v2, v0}, Lcom/shabakaty/downloader/lg;-><init>(Ljava/lang/String;[BLcom/shabakaty/downloader/lg$a;)V

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/fw3;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/ol1;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v4, v3}, Lcom/shabakaty/downloader/ol1;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;)V

    aput-object v2, v0, v1

    return-object v0

    .line 3
    :pswitch_1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fw3;->d()[Lcom/shabakaty/downloader/n91;

    move-result-object v0

    return-object v0

    :goto_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/sj3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/sj3;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public synthetic f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/r91;->a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method
