.class public Lzendesk/belvedere/BelvedereFileProvider;
.super Landroidx/core/content/FileProvider;
.source "BelvedereFileProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/core/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    move-object p2, p1

    check-cast p2, Landroid/database/MatrixCursor;

    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p3

    .line 3
    array-length p4, p3

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "_data"

    if-ge v0, p4, :cond_1

    aget-object v2, p3, v0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p4, p3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    array-length p4, p3

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    .line 6
    array-length v0, p3

    aput-object v1, p4, v0

    .line 7
    :goto_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    invoke-direct {v0, p4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p4, -0x1

    .line 8
    invoke-interface {p1, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 9
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p4

    const/4 v1, 0x0

    .line 11
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method
