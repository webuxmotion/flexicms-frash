<?php $this->theme->header(); ?> 

<main>
    <div class="container">
      <h3>Pages <a href="/admin/pages/create/">Create page</a></h3>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Date</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach($pages as $page) : ?>
            <tr>
              <th scope="row">1</th>
              <td><?=$page['title']?></td>
              <td><?=$page['date']?></td>
            </tr>
          <?php endforeach; ?>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div>
</main>

<?php $this->theme->footer(); ?> 
