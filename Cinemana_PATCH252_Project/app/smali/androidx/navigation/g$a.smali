.class public final Landroidx/navigation/g$a;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/navigation/g$a;->b:I

    .line 3
    iput v0, p0, Landroidx/navigation/g$a;->d:I

    .line 4
    iput v0, p0, Landroidx/navigation/g$a;->e:I

    .line 5
    iput v0, p0, Landroidx/navigation/g$a;->f:I

    .line 6
    iput v0, p0, Landroidx/navigation/g$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/g;
    .locals 9

    .line 1
    new-instance v8, Landroidx/navigation/g;

    iget-boolean v1, p0, Landroidx/navigation/g$a;->a:Z

    iget v2, p0, Landroidx/navigation/g$a;->b:I

    iget-boolean v3, p0, Landroidx/navigation/g$a;->c:Z

    iget v4, p0, Landroidx/navigation/g$a;->d:I

    iget v5, p0, Landroidx/navigation/g$a;->e:I

    iget v6, p0, Landroidx/navigation/g$a;->f:I

    iget v7, p0, Landroidx/navigation/g$a;->g:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/g;-><init>(ZIZIIII)V

    return-object v8
.end method
