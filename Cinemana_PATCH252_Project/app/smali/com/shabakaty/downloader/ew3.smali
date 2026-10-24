.class public final synthetic Lcom/shabakaty/downloader/ew3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/lw3;

.field public final synthetic t:Lcom/shabakaty/downloader/oq4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/lw3;Lcom/shabakaty/downloader/oq4;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/ew3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ew3;->s:Lcom/shabakaty/downloader/lw3;

    iput-object p2, p0, Lcom/shabakaty/downloader/ew3;->t:Lcom/shabakaty/downloader/oq4;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lcom/shabakaty/downloader/ew3;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ew3;->s:Lcom/shabakaty/downloader/lw3;

    iget-object v3, p0, Lcom/shabakaty/downloader/ew3;->t:Lcom/shabakaty/downloader/oq4;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/lw3;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/shabakaty/downloader/oq4;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw3;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/dx4;->t:Lcom/shabakaty/downloader/dx4;

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/lw3;->f(Landroid/database/Cursor;Lcom/shabakaty/downloader/lw3$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ew3;->s:Lcom/shabakaty/downloader/lw3;

    iget-object v3, p0, Lcom/shabakaty/downloader/ew3;->t:Lcom/shabakaty/downloader/oq4;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/lw3;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/shabakaty/downloader/oq4;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v5, "_id"

    const-string v6, "transport_name"

    const-string v7, "timestamp_ms"

    const-string v8, "uptime_ms"

    const-string v9, "payload_encoding"

    const-string v10, "payload"

    const-string v11, "code"

    const-string v12, "inline"

    .line 10
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/String;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/shabakaty/downloader/lw3;->u:Lcom/shabakaty/downloader/y51;

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/y51;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v5, "events"

    const-string v7, "context_id = ?"

    move-object v4, p1

    .line 13
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v4, v0, v13, v3}, Lcom/shabakaty/downloader/ij4;-><init>(Lcom/shabakaty/downloader/lw3;Ljava/util/List;Lcom/shabakaty/downloader/oq4;)V

    .line 14
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/lw3;->f(Landroid/database/Cursor;Lcom/shabakaty/downloader/lw3$b;)Ljava/lang/Object;

    .line 15
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "event_id IN ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 18
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yb3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/yb3;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x2c

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v2, 0x29

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "event_id"

    const-string v3, "name"

    const-string v4, "value"

    .line 22
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    move-object v4, p1

    .line 24
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/cu;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cu;-><init>(Ljava/util/Map;)V

    .line 25
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/lw3;->f(Landroid/database/Cursor;Lcom/shabakaty/downloader/lw3$b;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v13}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 27
    :goto_4
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yb3;

    .line 29
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yb3;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yb3;->a()Lcom/shabakaty/downloader/n51;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n51;->i()Lcom/shabakaty/downloader/n51$a;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yb3;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/lw3$c;

    .line 32
    iget-object v5, v4, Lcom/shabakaty/downloader/lw3$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/shabakaty/downloader/lw3$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/shabakaty/downloader/n51$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/n51$a;

    goto :goto_5

    .line 33
    :cond_5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yb3;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yb3;->c()Lcom/shabakaty/downloader/oq4;

    move-result-object v1

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n51$a;->b()Lcom/shabakaty/downloader/n51;

    move-result-object v2

    .line 34
    new-instance v5, Lcom/shabakaty/downloader/qh;

    invoke-direct {v5, v3, v4, v1, v2}, Lcom/shabakaty/downloader/qh;-><init>(JLcom/shabakaty/downloader/oq4;Lcom/shabakaty/downloader/n51;)V

    .line 35
    invoke-interface {p1, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
