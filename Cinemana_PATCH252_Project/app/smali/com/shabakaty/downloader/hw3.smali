.class public final synthetic Lcom/shabakaty/downloader/hw3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/u01$b;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/px1$a;
.implements Lcom/shabakaty/downloader/cq;
.implements Lcom/shabakaty/downloader/gh2$a;
.implements Lcom/shabakaty/downloader/np0$a;
.implements Lcom/shabakaty/downloader/gg0$a;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic s:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic t:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic u:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic v:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic w:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic x:Lcom/shabakaty/downloader/hw3;

.field public static final synthetic y:Lcom/shabakaty/downloader/hw3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->r:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->s:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->t:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->u:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->v:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->w:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->x:Lcom/shabakaty/downloader/hw3;

    new-instance v0, Lcom/shabakaty/downloader/hw3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/hw3;->y:Lcom/shabakaty/downloader/hw3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lcom/shabakaty/downloader/v01;->a()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/gg0;->a:Lcom/shabakaty/downloader/ml0;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v7, v1

    move-object v8, v7

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "baseAddress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "uuid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 9
    new-instance v8, Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/eg0;->a:Ljava/nio/charset/Charset;

    .line 11
    invoke-direct {v8, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    const-string v2, "Null name"

    .line 15
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v0, :cond_5

    const-string p1, " baseAddress"

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    if-nez v1, :cond_6

    const-string v2, " size"

    .line 17
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-nez v7, :cond_7

    const-string v2, " name"

    .line 18
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/tg;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/shabakaty/downloader/tg;-><init>(JJLjava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tg$a;)V

    return-object p1

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_3
        0x35e001 -> :sswitch_2
        0x36f3bb -> :sswitch_1
        0x44c50fe3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/qd1;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/qd1;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/yl0;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/shabakaty/downloader/bq;->a(Lcom/shabakaty/downloader/yl0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/pj3;)V
    .locals 0

    sget-object p1, Lcom/shabakaty/downloader/h83;->c:Lcom/shabakaty/downloader/np0$a;

    return-void
.end method

.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

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

.method public h(IIIII)Z
    .locals 0

    sget-object p1, Lcom/shabakaty/downloader/px1;->b:Lcom/shabakaty/downloader/px1$a;

    const/4 p1, 0x0

    return p1
.end method
