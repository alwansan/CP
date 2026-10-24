.class public final synthetic Lcom/shabakaty/downloader/ex4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/fx4$a;
.implements Lcom/shabakaty/downloader/br4;
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/si2$b;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/gg0$a;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic t:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic u:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic v:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic w:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic x:Lcom/shabakaty/downloader/ex4;

.field public static final synthetic y:Lcom/shabakaty/downloader/ex4;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->s:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->t:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->u:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->v:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->w:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->x:Lcom/shabakaty/downloader/ex4;

    new-instance v0, Lcom/shabakaty/downloader/ex4;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ex4;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ex4;->y:Lcom/shabakaty/downloader/ex4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/ex4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/ex4;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/wx;->s:Lcom/shabakaty/downloader/wx;

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/lw3;->f(Landroid/database/Cursor;Lcom/shabakaty/downloader/lw3$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :goto_0
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 9
    :cond_0
    new-array p1, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 12
    array-length v5, v4

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ex4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->b(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$c;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->a(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/ex4;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/yn2;

    .line 2
    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/yn2;-><init>(I)V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/w1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/w1;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public synthetic f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/r91;->a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;Lcom/shabakaty/downloader/xd1;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/t6;

    return-void
.end method
