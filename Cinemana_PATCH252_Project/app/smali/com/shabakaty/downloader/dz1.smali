.class public interface abstract Lcom/shabakaty/downloader/dz1;
.super Ljava/lang/Object;
.source "ImageOutputConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/jn3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dz1$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/shabakaty/downloader/kd;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.targetAspectRatio"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.targetRotation"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/dz1;->c:Lcom/shabakaty/downloader/o90$a;

    .line 7
    const-class v0, Landroid/util/Size;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.targetResolution"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    .line 10
    const-class v0, Landroid/util/Size;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.defaultResolution"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Lcom/shabakaty/downloader/dz1;->e:Lcom/shabakaty/downloader/o90$a;

    .line 13
    const-class v0, Landroid/util/Size;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.maxResolution"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Lcom/shabakaty/downloader/dz1;->f:Lcom/shabakaty/downloader/o90$a;

    .line 16
    const-class v0, Ljava/util/List;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.imageOutput.supportedResolutions"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Lcom/shabakaty/downloader/dz1;->g:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method


# virtual methods
.method public abstract f(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract g(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract j(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract l(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract o()Z
.end method

.method public abstract q()I
.end method

.method public abstract v(I)I
.end method
