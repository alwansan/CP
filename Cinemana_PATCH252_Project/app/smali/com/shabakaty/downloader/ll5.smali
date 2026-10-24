.class public final Lcom/shabakaty/downloader/ll5;
.super Lcom/shabakaty/downloader/qi5;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final v:Lcom/shabakaty/downloader/tl5;

.field public final w:Lcom/shabakaty/downloader/ly5;

.field public final x:Lcom/shabakaty/downloader/ly5;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hits2"

    aput-object v2, v0, v1

    const-string v3, "hit_id"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "hit_time"

    aput-object v5, v0, v3

    const/4 v6, 0x3

    const-string v7, "hit_url"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "hit_string"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "hit_app_id"

    aput-object v7, v0, v6

    const-string v6, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    .line 1
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ll5;->y:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v2, v0, v4

    const-string v1, "SELECT MAX(%s) FROM %s WHERE 1;"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ll5;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ly5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ly5;-><init>(Lcom/shabakaty/downloader/x30;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ll5;->w:Lcom/shabakaty/downloader/ly5;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ly5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ly5;-><init>(Lcom/shabakaty/downloader/x30;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ll5;->x:Lcom/shabakaty/downloader/ly5;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/tl5;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    const-string v1, "google_analytics_v4.db"

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/tl5;-><init>(Lcom/shabakaty/downloader/ll5;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ll5;->v:Lcom/shabakaty/downloader/tl5;

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final M1()V
    .locals 0

    return-void
.end method

.method public final O1()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ll5;->v:Lcom/shabakaty/downloader/tl5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tl5;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error opening database"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    throw v0
.end method

.method public final P1()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    const-string v0, "SELECT COUNT(*) FROM hits2"

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 8
    :cond_1
    :try_start_1
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Database returned empty set"

    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Database error"

    .line 9
    invoke-virtual {p0, v3, v0, v1}, Lcom/shabakaty/downloader/fq1;->F1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final Q1(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " in ("

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    if-lez v1, :cond_1

    const-string v3, ","

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Invalid hit id"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, ")"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "Deleting dispatched hits. count"

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hits2"

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    const-string v4, "Deleted fewer hits then expected"

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x5

    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error deleting hits"

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    throw p1
.end method

.method public final R1(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/su5;",
            ">;"
        }
    .end annotation

    const-string v0, "hit_id"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "hits2"

    const-string v6, "hit_time"

    const-string v7, "hit_string"

    const-string v8, "hit_url"

    const-string v9, "hit_app_id"

    .line 5
    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "%s ASC"

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v0, v12, v2

    .line 6
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 12
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 p2, 0x2

    .line 13
    invoke-interface {v3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 14
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    .line 15
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 16
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ll5;->V1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const-string p2, "http:"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 19
    :goto_2
    new-instance p2, Lcom/shabakaty/downloader/su5;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/shabakaty/downloader/su5;-><init>(Lcom/shabakaty/downloader/fq1;Ljava/util/Map;JZJI)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 21
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Error loading hits from the database"

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v3, :cond_5

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final S1()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ll5;->w:Lcom/shabakaty/downloader/ly5;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ly5;->b(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ll5;->w:Lcom/shabakaty/downloader/ly5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ly5;->a()V

    const-string v0, "Deleting stale hits (if any)"

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mn0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "hits2"

    const-string v2, "hit_time < ?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Deleted stale hits, count"

    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final T1()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ll5;->z:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "Database error"

    .line 10
    invoke-virtual {p0, v3, v0, v1}, Lcom/shabakaty/downloader/fq1;->F1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public final U1(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Deleting hit, id"

    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ll5;->Q1(Ljava/util/List;)V

    return-void
.end method

.method public final V1(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "?"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/sw1;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error parsing hit parameters"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method public final close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ll5;->v:Lcom/shabakaty/downloader/tl5;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing database"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Sql error closing database"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final i0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
