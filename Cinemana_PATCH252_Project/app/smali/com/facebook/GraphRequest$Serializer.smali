.class public Lcom/facebook/GraphRequest$Serializer;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Lcom/facebook/internal/Logger;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    .line 4
    iput-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    .line 5
    iput-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    .line 6
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$Serializer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%s"

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->h()V

    .line 4
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/facebook/internal/Logger;->a:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    .line 5
    sget-object v1, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->c:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Content-Disposition: form-data; name=\"%s\""

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "; filename=\"%s\""

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$Serializer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, ""

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Content-Type"

    aput-object v0, p1, v2

    aput-object p3, p1, v1

    const-string p3, "%s: %s"

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "%s="

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    instance-of p1, p1, Lcom/facebook/ProgressNoopOutputStream;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 5
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "_size"

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    check-cast p1, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->b(J)V

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_1
    throw p2

    .line 15
    :cond_2
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 16
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 17
    sget-object p1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    add-int/2addr p1, p3

    :goto_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, ""

    .line 20
    invoke-virtual {p0, v0, p2}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->h()V

    .line 22
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    if-eqz p2, :cond_3

    .line 23
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "<Data: %d>"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    iget-object p1, p2, Lcom/facebook/internal/Logger;->a:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    instance-of p3, p1, Lcom/facebook/ProgressNoopOutputStream;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    check-cast p1, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ProgressNoopOutputStream;->b(J)V

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, ""

    .line 6
    invoke-virtual {p0, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->h()V

    .line 8
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    if-eqz p2, :cond_2

    .line 9
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "<Data: %d>"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    iget-object p1, p2, Lcom/facebook/internal/Logger;->a:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    :cond_2
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "\r\n"

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$Serializer;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/facebook/RequestOutputStream;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->a(Lcom/facebook/GraphRequest;)V

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/facebook/GraphRequest;->k(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p2}, Lcom/facebook/GraphRequest;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 7
    check-cast p2, Landroid/graphics/Bitmap;

    const-string p3, "image/png"

    .line 8
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, p1, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-array p1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->h()V

    .line 12
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p1, Lcom/facebook/internal/Logger;->a:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    goto :goto_0

    .line 14
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 15
    check-cast p2, [B

    const-string p3, "content/unknown"

    .line 16
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->h()V

    .line 20
    iget-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->b:Lcom/facebook/internal/Logger;

    if-eqz p1, :cond_7

    .line 21
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "<Data: %d>"

    invoke-static {p3, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/facebook/internal/Logger;->a:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    goto :goto_0

    .line 23
    :cond_3
    instance-of p3, p2, Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 24
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$Serializer;->d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_4
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz p3, :cond_5

    .line 26
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$Serializer;->e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_5
    instance-of p3, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v0, "value is not a supported type."

    if-eqz p3, :cond_9

    .line 28
    check-cast p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 29
    iget-object p3, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->s:Landroid/os/Parcelable;

    .line 30
    iget-object p2, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->r:Ljava/lang/String;

    .line 31
    instance-of v1, p3, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_6

    .line 32
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->e(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_6
    instance-of v1, p3, Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 34
    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->d(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

    .line 35
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "--%s"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->a:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method
