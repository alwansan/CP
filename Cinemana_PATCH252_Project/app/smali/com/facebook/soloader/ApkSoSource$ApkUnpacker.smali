.class public Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;
.super Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.source "ApkSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ApkSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApkUnpacker"
.end annotation


# instance fields
.field public v:Ljava/io/File;

.field public final w:I

.field public final synthetic x:Lcom/facebook/soloader/ApkSoSource;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/ApkSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->x:Lcom/facebook/soloader/ApkSoSource;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    .line 3
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/facebook/soloader/UnpackingSoSource;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->v:Ljava/io/File;

    .line 4
    iget p1, p1, Lcom/facebook/soloader/ApkSoSource;->h:I

    .line 5
    iput p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->w:I

    return-void
.end method
