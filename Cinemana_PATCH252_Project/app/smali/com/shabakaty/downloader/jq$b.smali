.class public Lcom/shabakaty/downloader/jq$b;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lcom/shabakaty/downloader/jq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljavax/crypto/Cipher;

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:Ljava/security/SecureRandom;

.field public final e:Lcom/shabakaty/downloader/ce;

.field public f:Z

.field public g:Lcom/shabakaty/downloader/pt3;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 3
    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    :try_start_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v1, "AES/CBC/PKCS5PADDING"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_3

    :try_start_1
    const-string v0, "BC"

    .line 5
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 6
    :catchall_0
    :cond_3
    :try_start_2
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 7
    :goto_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 8
    :goto_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    xor-int/lit8 p2, p3, 0x1

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/md;->b(Z)V

    move-object v0, v2

    move-object v1, v0

    .line 10
    :goto_4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/jq$b;->a:Z

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/jq$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_5

    .line 13
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_5
    iput-object v2, p0, Lcom/shabakaty/downloader/jq$b;->d:Ljava/security/SecureRandom;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/ce;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ce;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/iq;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/iq;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ce;->c()Ljava/io/OutputStream;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/jq$b;->g:Lcom/shabakaty/downloader/pt3;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/pt3;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/pt3;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/jq$b;->g:Lcom/shabakaty/downloader/pt3;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/pt3;->a(Ljava/io/OutputStream;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/jq$b;->g:Lcom/shabakaty/downloader/pt3;

    .line 6
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    .line 7
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 8
    iget-boolean v3, p0, Lcom/shabakaty/downloader/jq$b;->a:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget-boolean v3, p0, Lcom/shabakaty/downloader/jq$b;->a:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 11
    iget-object v6, p0, Lcom/shabakaty/downloader/jq$b;->d:Ljava/security/SecureRandom;

    sget v7, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v6, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 13
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-object v3, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    iget-object v7, p0, Lcom/shabakaty/downloader/jq$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 15
    invoke-virtual {v3, v4, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 17
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljavax/crypto/CipherOutputStream;

    iget-object v6, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v4, v1, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 18
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 20
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/iq;

    .line 21
    iget v4, v3, Lcom/shabakaty/downloader/iq;->a:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 22
    iget-object v4, v3, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 23
    iget-object v4, v3, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 24
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/jq;->b(Lcom/shabakaty/downloader/on0;Ljava/io/DataOutputStream;)V

    .line 25
    invoke-virtual {p0, v3, v0}, Lcom/shabakaty/downloader/jq$b;->i(Lcom/shabakaty/downloader/iq;I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_4

    .line 26
    :cond_3
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/ce;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 31
    iput-boolean v5, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 32
    :goto_5
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_4

    .line 33
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 34
    :catch_2
    :cond_4
    throw p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ce;->a()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/iq;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    return-void
.end method

.method public e(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/iq;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/jq$b;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public f(J)V
    .locals 0

    return-void
.end method

.method public g(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/iq;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ce;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ce;->b()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v5, 0x2

    if-le v0, v5, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    .line 7
    iget-object v6, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 8
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 9
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v6, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/shabakaty/downloader/jq$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    sget v9, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Lcom/shabakaty/downloader/jq$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_3
    iget-boolean v3, p0, Lcom/shabakaty/downloader/jq$b;->a:Z

    if-eqz v3, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/shabakaty/downloader/jq$b;->f:Z

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 16
    invoke-virtual {p0, v0, v4}, Lcom/shabakaty/downloader/jq$b;->j(ILjava/io/DataInputStream;)Lcom/shabakaty/downloader/iq;

    move-result-object v7

    .line 17
    iget-object v8, v7, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v8, v7, Lcom/shabakaty/downloader/iq;->a:I

    iget-object v9, v7, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v7, v0}, Lcom/shabakaty/downloader/jq$b;->i(Lcom/shabakaty/downloader/iq;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 21
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ne v0, v6, :cond_8

    if-nez v3, :cond_7

    goto :goto_4

    .line 22
    :cond_7
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 23
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    nop

    goto :goto_8

    .line 24
    :cond_8
    :goto_4
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 25
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_5

    :catch_3
    move-object v0, v4

    goto :goto_6

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v0, :cond_9

    .line 26
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 27
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 28
    :catch_4
    :cond_9
    throw p1

    :catch_5
    nop

    :goto_6
    if-eqz v0, :cond_a

    .line 29
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 30
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_a
    :goto_7
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_b

    .line 31
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 32
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 33
    iget-object p1, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    .line 34
    iget-object p2, p1, Lcom/shabakaty/downloader/ce;->a:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 35
    iget-object p1, p1, Lcom/shabakaty/downloader/ce;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_b
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq$b;->e:Lcom/shabakaty/downloader/ce;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ce;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ce;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/iq;I)I
    .locals 4

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/iq;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/ed0;->a(Lcom/shabakaty/downloader/fd0;)J

    move-result-wide p1

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    xor-long/2addr p1, v2

    long-to-int p2, p1

    add-int/2addr v1, p2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/on0;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :goto_0
    return v1
.end method

.method public final j(ILjava/io/DataInputStream;)Lcom/shabakaty/downloader/iq;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/gd0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/gd0;-><init>()V

    .line 5
    invoke-static {v2, p1, p2}, Lcom/shabakaty/downloader/gd0;->a(Lcom/shabakaty/downloader/gd0;J)Lcom/shabakaty/downloader/gd0;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/on0;->c:Lcom/shabakaty/downloader/on0;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/on0;->a(Lcom/shabakaty/downloader/gd0;)Lcom/shabakaty/downloader/on0;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/jq;->a(Ljava/io/DataInputStream;)Lcom/shabakaty/downloader/on0;

    move-result-object p1

    .line 8
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/iq;

    invoke-direct {p2, v0, v1, p1}, Lcom/shabakaty/downloader/iq;-><init>(ILjava/lang/String;Lcom/shabakaty/downloader/on0;)V

    return-object p2
.end method
