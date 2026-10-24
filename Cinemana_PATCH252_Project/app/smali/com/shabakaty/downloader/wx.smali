.class public final synthetic Lcom/shabakaty/downloader/wx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/wc0;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/a00$a;
.implements Lcom/shabakaty/downloader/gh2$a;
.implements Lcom/shabakaty/downloader/gg0$a;
.implements Lcom/shabakaty/downloader/aq4;


# static fields
.field public static final synthetic A:Lcom/shabakaty/downloader/wx;

.field public static final synthetic s:Lcom/shabakaty/downloader/wx;

.field public static final synthetic t:Lcom/shabakaty/downloader/wx;

.field public static final synthetic u:Lcom/shabakaty/downloader/wx;

.field public static final synthetic v:Lcom/shabakaty/downloader/wx;

.field public static final synthetic w:Lcom/shabakaty/downloader/wx;

.field public static final synthetic x:Lcom/shabakaty/downloader/wx;

.field public static final synthetic y:Lcom/shabakaty/downloader/wx;

.field public static final synthetic z:Lcom/shabakaty/downloader/wx;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->s:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->t:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->u:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->v:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->w:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->x:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->y:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->z:Lcom/shabakaty/downloader/wx;

    new-instance v0, Lcom/shabakaty/downloader/wx;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wx;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/wx;->A:Lcom/shabakaty/downloader/wx;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/wx;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->c()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/wx;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/oq4;->a()Lcom/shabakaty/downloader/oq4$a;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/oq4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/oq4$a;

    const/4 v3, 0x2

    .line 5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/wf3;->b(I)Lcom/shabakaty/downloader/tf3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/oq4$a;->c(Lcom/shabakaty/downloader/tf3;)Lcom/shabakaty/downloader/oq4$a;

    const/4 v3, 0x3

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 8
    :goto_1
    check-cast v2, Lcom/shabakaty/downloader/bi$b;

    .line 9
    iput-object v3, v2, Lcom/shabakaty/downloader/bi$b;->b:[B

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bi$b;->a()Lcom/shabakaty/downloader/oq4;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 12
    :goto_2
    check-cast p1, Lcom/shabakaty/downloader/qb3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qp1;->e()I

    move-result v0

    new-array v2, v0, [B

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/v40;->b:Ljava/util/logging/Logger;

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/v40$b;

    invoke-direct {v3, v2, v1, v0}, Lcom/shabakaty/downloader/v40$b;-><init>([BII)V

    .line 16
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/qp1;->g(Lcom/shabakaty/downloader/v40;)V

    .line 17
    invoke-virtual {v3}, Lcom/shabakaty/downloader/v40$b;->a0()I

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/i0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/gg0;->a:Lcom/shabakaty/downloader/ml0;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "importance"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "frames"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Null name"

    .line 9
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->a(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/zz1;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/zz1;-><init>(Ljava/util/List;)V

    move-object v3, v4

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_5

    const-string p1, " name"

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    if-nez v2, :cond_6

    const-string v4, " importance"

    .line 17
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    const-string v4, " frames"

    .line 18
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/wg;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/shabakaty/downloader/wg;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/wg$a;)V

    return-object p1

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/wx;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/dv2;

    .line 2
    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/dv2;-><init>(I)V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_1
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/m5;

    invoke-direct {v2}, Lcom/shabakaty/downloader/m5;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/jr4;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/qn4;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shabakaty/downloader/qn4;-><init>(J)V

    new-instance v5, Lcom/shabakaty/downloader/fp0;

    invoke-direct {v5, v1}, Lcom/shabakaty/downloader/fp0;-><init>(I)V

    const v6, 0x1b8a0

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/shabakaty/downloader/jr4;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/kr4$c;I)V

    aput-object v3, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Landroid/content/Context;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.television"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "tv"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "watch"

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "auto"

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "embedded"

    goto :goto_0

    :cond_3
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
