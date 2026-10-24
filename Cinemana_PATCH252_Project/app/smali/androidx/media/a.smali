.class public abstract Landroidx/media/a;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/a$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Landroidx/media/a$c;

.field public f:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/media/a;->a:I

    .line 3
    iput p2, p0, Landroidx/media/a;->b:I

    .line 4
    iput p3, p0, Landroidx/media/a;->d:I

    .line 5
    iput-object p4, p0, Landroidx/media/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media/a;->f:Landroid/media/VolumeProvider;

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/media/a$a;

    iget v4, p0, Landroidx/media/a;->a:I

    iget v5, p0, Landroidx/media/a;->b:I

    iget v6, p0, Landroidx/media/a;->d:I

    iget-object v7, p0, Landroidx/media/a;->c:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media/a$a;-><init>(Landroidx/media/a;IIILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media/a;->f:Landroid/media/VolumeProvider;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/media/a$b;

    iget v1, p0, Landroidx/media/a;->a:I

    iget v2, p0, Landroidx/media/a;->b:I

    iget v3, p0, Landroidx/media/a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/media/a$b;-><init>(Landroidx/media/a;III)V

    iput-object v0, p0, Landroidx/media/a;->f:Landroid/media/VolumeProvider;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media/a;->f:Landroid/media/VolumeProvider;

    return-object v0
.end method
