.class public final Lcom/shabakaty/downloader/uz6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/po6;


# instance fields
.field public a:Lcom/shabakaty/downloader/p47;

.field public b:Z

.field public c:Z

.field public final d:Landroid/content/Context;

.field public final e:Lcom/shabakaty/downloader/ti;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/ti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uz6;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/uz6;->e:Lcom/shabakaty/downloader/ti;

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.google.mlkit.dynamite.barcode"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uz6;->b:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->d:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/uz6;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/shabakaty/downloader/uz6;->b:Z

    const/16 v0, 0xe

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->j:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v2, "com.google.mlkit.dynamite.barcode"

    const-string v3, "com.google.mlkit.vision.barcode.internal.ThickBarcodeScannerCreator"

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Lcom/shabakaty/downloader/uz6;->d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/p47;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/p47;->d()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "Failed to init thick barcode scanner."

    invoke-direct {v2, v3, v0, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "Failed to load the bundled barcode module."

    invoke-direct {v2, v3, v0, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/uz6;->b:Z

    .line 8
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v2, "com.google.android.gms.vision.barcode"

    const-string v3, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    .line 9
    invoke-virtual {p0, v0, v2, v3}, Lcom/shabakaty/downloader/uz6;->d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/p47;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    .line 10
    invoke-interface {v0}, Lcom/shabakaty/downloader/p47;->d()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/au2;

    const/16 v2, 0xd

    const-string v3, "Failed to init thin barcode scanner."

    invoke-direct {v1, v3, v2, v0}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :catch_3
    nop

    .line 12
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uz6;->c:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->d:Landroid/content/Context;

    const-string v2, "barcode"

    .line 14
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/f83;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/shabakaty/downloader/uz6;->c:Z

    .line 15
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uz6;->b:Z

    return v0
.end method

.method public final b(Lcom/shabakaty/downloader/k12;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k12;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uz6;->b:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uz6;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    if-eqz v0, :cond_7

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/k12;->c:I

    .line 3
    iget v1, p1, Lcom/shabakaty/downloader/k12;->f:I

    const/16 v2, 0x23

    const-string v3, "null reference"

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k12;->a()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 5
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    :cond_1
    move v6, v0

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/z57;

    .line 8
    iget v5, p1, Lcom/shabakaty/downloader/k12;->f:I

    .line 9
    iget v7, p1, Lcom/shabakaty/downloader/k12;->d:I

    .line 10
    iget v1, p1, Lcom/shabakaty/downloader/k12;->e:I

    .line 11
    invoke-static {v1}, Lcom/shabakaty/downloader/h70;->a(I)I

    move-result v8

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/z57;-><init>(IIIIJ)V

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/tz1;->a:Lcom/shabakaty/downloader/tz1;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p1, Lcom/shabakaty/downloader/k12;->f:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_2

    const v0, 0x32315659

    if-eq v1, v0, :cond_4

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/au2;

    .line 17
    iget p1, p1, Lcom/shabakaty/downloader/k12;->f:I

    const/16 v1, 0x25

    const-string v2, "Unsupported image format: "

    .line 18
    invoke-static {v1, v2, p1}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 19
    :cond_2
    iget-object v1, p1, Lcom/shabakaty/downloader/k12;->b:Lcom/shabakaty/downloader/qm5;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/k12;->b:Lcom/shabakaty/downloader/qm5;

    .line 20
    iget-object v5, p1, Lcom/shabakaty/downloader/qm5;->a:Landroid/media/Image;

    .line 21
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/p43;

    invoke-direct {p1, v5}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    .line 23
    :cond_5
    iget-object p1, p1, Lcom/shabakaty/downloader/k12;->a:Landroid/graphics/Bitmap;

    .line 24
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    .line 26
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/p47;->y1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/z57;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k37;

    new-instance v2, Lcom/shabakaty/downloader/ri;

    new-instance v3, Lcom/shabakaty/downloader/bv6;

    .line 31
    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/bv6;-><init>(Lcom/shabakaty/downloader/k37;)V

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ri;-><init>(Lcom/shabakaty/downloader/nr6;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/au2;

    const/16 v1, 0xd

    const-string v2, "Failed to run barcode scanner."

    invoke-direct {v0, v2, v1, p1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 33
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/au2;

    const/16 v0, 0xe

    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/p47;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/uz6;->a:Lcom/shabakaty/downloader/p47;

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/p47;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->d:Landroid/content/Context;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/t47;->asInterface(Landroid/os/IBinder;)Lcom/shabakaty/downloader/v47;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/uz6;->d:Landroid/content/Context;

    .line 3
    new-instance p3, Lcom/shabakaty/downloader/p43;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/p37;

    iget-object v0, p0, Lcom/shabakaty/downloader/uz6;->e:Lcom/shabakaty/downloader/ti;

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/ti;->a:I

    .line 6
    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/p37;-><init>(I)V

    .line 7
    invoke-interface {p1, p3, p2}, Lcom/shabakaty/downloader/v47;->newBarcodeScanner(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/p37;)Lcom/shabakaty/downloader/p47;

    move-result-object p1

    return-object p1
.end method
