.class public interface abstract Lcom/shabakaty/downloader/hx4;
.super Ljava/lang/Object;
.source "UseCaseConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/qk4;
.implements Lcom/shabakaty/downloader/kx4;
.implements Lcom/shabakaty/downloader/az1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hx4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shabakaty/downloader/cx4;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/qk4<",
        "TT;>;",
        "Lcom/shabakaty/downloader/kx4;",
        "Lcom/shabakaty/downloader/az1;"
    }
.end annotation


# static fields
.field public static final k:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/u14;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/pv;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/u14$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/pv$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/fu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/shabakaty/downloader/u14;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.defaultSessionConfig"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/hx4;->k:Lcom/shabakaty/downloader/o90$a;

    .line 4
    const-class v0, Lcom/shabakaty/downloader/pv;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.defaultCaptureConfig"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/hx4;->l:Lcom/shabakaty/downloader/o90$a;

    .line 7
    const-class v0, Lcom/shabakaty/downloader/u14$d;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.sessionConfigUnpacker"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/hx4;->m:Lcom/shabakaty/downloader/o90$a;

    .line 10
    const-class v0, Lcom/shabakaty/downloader/pv$b;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.captureConfigUnpacker"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Lcom/shabakaty/downloader/hx4;->n:Lcom/shabakaty/downloader/o90$a;

    .line 13
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.surfaceOccupancyPriority"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Lcom/shabakaty/downloader/hx4;->o:Lcom/shabakaty/downloader/o90$a;

    .line 16
    const-class v0, Lcom/shabakaty/downloader/fu;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.useCase.cameraSelector"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Lcom/shabakaty/downloader/hx4;->p:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method


# virtual methods
.method public abstract p(I)I
.end method

.method public abstract r(Lcom/shabakaty/downloader/u14$d;)Lcom/shabakaty/downloader/u14$d;
.end method

.method public abstract s(Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;
.end method

.method public abstract w(Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;
.end method
